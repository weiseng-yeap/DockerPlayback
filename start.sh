#!/bin/sh
export XDG_RUNTIME_DIR=/run/ias

systemctl start ias
gst-launch-1.0 filesrc location=/workdir/app/media.mp4 ! qtdemux ! h264parse ! decodebin ! fpsdisplaysink video-sink=waylandsink


