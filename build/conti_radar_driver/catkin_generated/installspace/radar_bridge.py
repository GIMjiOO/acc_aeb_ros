#!/usr/bin/env python3
"""
radar_bridge.py — Adapts radar_conti/ObjectList to npust_bus_msgs/TrackedObjectArray
and republishes on /perception/radar/tracked_objects for the ACC/AEB controller.

ARS408-21 field mapping:
  obj_distlong  -> TrackedObject.x   (longitudinal range, m)
  obj_distlat   -> TrackedObject.y   (lateral offset, m; ARS408 positive=left, matches camera)
  obj_vrellong  -> TrackedObject.vx  (Doppler relative velocity, m/s; ego-relative)
  obj_id        -> TrackedObject.id

The ACC/AEB launch file has radar_vx_is_relative=true, which matches Doppler output.
Objects where distlong <= 0 are filtered out (invalid/behind-radar returns).
"""
import rospy
from radar_conti.msg import ObjectList
from npust_bus_msgs.msg import TrackedObjectArray, TrackedObject


def object_list_cb(msg, pub):
    arr = TrackedObjectArray()
    arr.header = msg.header
    for obj in msg.objects:
        x = obj.object_general.obj_distlong.data
        if x <= 0.0:
            continue
        t = TrackedObject()
        t.x  = x
        t.y  = obj.object_general.obj_distlat.data
        t.vx = obj.object_general.obj_vrellong.data
        t.id = obj.obj_id.data
        arr.objects.append(t)
    pub.publish(arr)


def main():
    rospy.init_node('radar_bridge')
    pub = rospy.Publisher(
        '/perception/radar/tracked_objects', TrackedObjectArray, queue_size=1)
    rospy.Subscriber(
        '/radar_object_list', ObjectList, object_list_cb, callback_args=pub, queue_size=1)
    rospy.loginfo('[radar_bridge] Bridging /radar_object_list -> /perception/radar/tracked_objects')
    rospy.spin()


if __name__ == '__main__':
    main()
