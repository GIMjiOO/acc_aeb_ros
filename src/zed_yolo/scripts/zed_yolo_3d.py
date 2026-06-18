#!/usr/bin/env python3
from ultralytics import YOLO
import rospy
import cv2
import numpy as np
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import message_filters
import gc
import torch

class ZedYolo3DNode:
    def __init__(self):
        rospy.init_node('zed_yolo_3d_node', anonymous=True)
        self.bridge = CvBridge()
        self.current_frame = None
        
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
        
        rospy.loginfo("YOLO 3D node initialized successfully.")

    def callback(self, image_msg, depth_msg):
        try:
            color_image = self.bridge.imgmsg_to_cv2(image_msg, desired_encoding="bgr8")
            depth_image = self.bridge.imgmsg_to_cv2(depth_msg, desired_encoding="32FC1")
        except CvBridgeError as e:
            rospy.logerr(f"CvBridge Error: {e}")
            return

        results = self.model(color_image, device='cuda', half=True, imgsz=320, verbose=False)

        for result in results:
            boxes = result.boxes
            for box in boxes:
                xyxy = box.xyxy[0].cpu().numpy()
                x1, y1, x2, y2 = map(int, xyxy)
                
                cls_id = int(box.cls[0].cpu().numpy())
                label = self.model.names[cls_id]

                cx = int((x1 + x2) / 2)
                cy = int((y1 + y2) / 2)

                height, width = depth_image.shape
                if 0 <= cx < width and 0 <= cy < height:
                    z_distance = depth_image[cy, cx]

                    if not (np.isnan(z_distance) or np.isinf(z_distance)):
                        cv2.rectangle(color_image, (x1, y1), (x2, y2), (0, 255, 0), 2)
                        cv2.circle(color_image, (cx, cy), 5, (0, 0, 255), -1)
                        cv2.putText(color_image, f"{label}: {z_distance:.2f}m", (x1, y1 - 10),
                                    cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)

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
