#!/bin/bash
# concatenate all jpg files in files.txt and output it as mp4
./ffmpeg-bin/ffmpeg -y -f concat -safe 0 -r 10 -i files.txt video.mp4 
