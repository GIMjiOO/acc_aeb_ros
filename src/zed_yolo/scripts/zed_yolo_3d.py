#!/usr/bin/env python3
from ultralytics import YOLO
import rospy
import cv2
import numpy as np
from sensor_msgs.msg import Image, CameraInfo
from cv_bridge import CvBridge, CvBridgeError
from npust_bus_msgs.msg import TrackedObjectArray, TrackedObject
import message_filters
import gc
import torch

class ZedYolo3DNode:
    def __init__(self):
        rospy.init_node('zed_yolo_3d_node', anonymous=True)
        self.bridge = CvBridge()
        self.current_frame = None

        # Camera intrinsics (populated once from CameraInfo)
        self._fx = None
        self._cx_principal = None

        rospy.loginfo("Loading YOLOv8 model onto GPU...")
        self.model = YOLO('yolov8n.pt').to('cuda')

        rospy.loginfo("Warming up CUDA kernels...")
        dummy_img = np.zeros((480, 640, 3), dtype=np.uint8)
        self.model(dummy_img, verbose=False)

        # buff_size=2**24 allows the socket to hold a raw image without network bottlenecking
        image_sub = message_filters.Subscriber('/zed/zed_node/left/image_rect_color', Image, queue_size=1, buff_size=2**24)
        depth_sub = message_filters.Subscriber('/zed/zed_node/depth/depth_registered', Image, queue_size=1, buff_size=2**24)

        ts = message_filters.ApproximateTimeSynchronizer([image_sub, depth_sub], queue_size=1, slop=0.1)
        ts.registerCallback(self.callback)

        # Camera intrinsics — needed once to compute lateral offset from pixel position.
        self._cam_info_sub = rospy.Subscriber(
            '/zed/zed_node/left/camera_info', CameraInfo, self._cam_info_cb, queue_size=1)

        # Publish tracked objects for the ACC/AEB controller.
        # vx=0.0 is world-frame absolute (stationary assumption); controller launch
        # must have vx_is_relative=false so it subtracts ego speed correctly.
        self._tracked_pub = rospy.Publisher(
            '/perception/camera/tracked_objects', TrackedObjectArray, queue_size=1)

        rospy.loginfo("YOLO 3D node initialized successfully.")

    def _cam_info_cb(self, msg):
        if self._fx is None:
            self._fx = float(msg.K[0])           # K[0] = fx (focal length in pixels)
            self._cx_principal = float(msg.K[2])  # K[2] = cx (principal point x)
            rospy.loginfo("[YOLO] Camera intrinsics received: fx=%.1f cx=%.1f",
                          self._fx, self._cx_principal)
            self._cam_info_sub.unregister()       # only need it once

    def callback(self, image_msg, depth_msg):
        try:
            color_image = self.bridge.imgmsg_to_cv2(image_msg, desired_encoding="bgr8")
            depth_image = self.bridge.imgmsg_to_cv2(depth_msg, desired_encoding="32FC1")
        except CvBridgeError as e:
            rospy.logerr(f"CvBridge Error: {e}")
            return

        results = self.model(color_image, device='cuda', half=True, imgsz=320, verbose=False)

        height, width = depth_image.shape
        detections = []  # list of (z_dist_m, y_lateral_m)

        for result in results:
            for box in result.boxes:
                xyxy = box.xyxy[0].cpu().numpy()
                x1, y1, x2, y2 = map(int, xyxy)

                cls_id = int(box.cls[0].cpu().numpy())
                label = self.model.names[cls_id]

                cx = int((x1 + x2) / 2)
                cy = int((y1 + y2) / 2)

                if 0 <= cx < width and 0 <= cy < height:
                    z_dist = float(depth_image[cy, cx])

                    if not (np.isnan(z_dist) or np.isinf(z_dist)) and z_dist > 0.0:
                        # Lateral offset using pinhole model.
                        # ZED depth image is Z-axis (perpendicular to image plane).
                        # Camera frame: right is +x, so negate to get vehicle-left-positive.
                        if self._fx is not None:
                            y_lat = -(cx - self._cx_principal) * z_dist / self._fx
                        else:
                            y_lat = 0.0

                        detections.append((z_dist, y_lat))

                        cv2.rectangle(color_image, (x1, y1), (x2, y2), (0, 255, 0), 2)
                        cv2.circle(color_image, (cx, cy), 5, (0, 0, 255), -1)
                        cv2.putText(color_image, f"{label}: {z_dist:.2f}m", (x1, y1 - 10),
                                    cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)

        # Sort by distance ascending so the closest (highest-threat) object gets id=0.
        # Stable id=0 across frames helps the MioTracker confirm the lead vehicle quickly.
        detections.sort(key=lambda d: d[0])

        arr = TrackedObjectArray()
        arr.header = image_msg.header
        for oid, (z_dist, y_lat) in enumerate(detections):
            obj = TrackedObject()
            obj.x  = z_dist   # forward distance (m) — ZED depth is already Z-axis
            obj.y  = y_lat    # lateral offset (m), positive = left in vehicle frame
            obj.vx = 0.0      # world-frame absolute velocity; YOLO has no velocity estimate,
                              # stationary assumption. Controller must use vx_is_relative=false.
            obj.id = oid
            arr.objects.append(obj)

        self._tracked_pub.publish(arr)

        # Copy the image explicitly to decouple it from ROS memory references
        self.current_frame = color_image.copy()

        # Aggressively delete variables to prevent RAM spikes
        del results
        del color_image
        del depth_image
        gc.collect()

    def run(self):
        rate = rospy.Rate(30)
        while not rospy.is_shutdown():
            if self.current_frame is not None:
                cv2.imshow("ZED YOLO 3D Tracking", self.current_frame)

            if cv2.waitKey(1) & 0xFF == ord('q'):
                break
            rate.sleep()

        cv2.destroyAllWindows()

if __name__ == '__main__':
    try:
        node = ZedYolo3DNode()
        node.run()
    except rospy.ROSInterruptException:
        pass
