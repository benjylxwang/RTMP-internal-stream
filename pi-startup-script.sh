#!/bin/bash

HOST=192.168.1.167
KEY=test

ffprobe -v quiet -print_format json -show_streams rtmp://$HOST/live/$KEY

while [ $? -ne 0 ]
do 
    ffprobe -v quiet -print_format json -show_streams rtmp://$HOST/live/$KEY
done

cvlc --fullscreen rtmp://$HOST/live/$KEY