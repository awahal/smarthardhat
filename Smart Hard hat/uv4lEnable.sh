#!/bin/bash

sleep 10s
uv4l --driver raspicam --enable-server --server-option '--enable-webrtc-video=yes' --server-option '--enable-webrtc-audio=yes' --server-option '--webrtc-receive-video=no' --server-option '--webrtc-receive-audio=yes' --auto-video_nr
