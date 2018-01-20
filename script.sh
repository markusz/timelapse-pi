#!/bin/sh
export PATH=~/.local/bin:$PATH
timestamp=$(date +"%s")
raspistill -o /home/pi/timelapse/${timestamp}.jpg
aws s3 cp --quiet /home/pi/timelapse/${timestamp}.jpg s3://markusziller/timelapse/garten/${timestamp}.jpg
rm /home/pi/timelapse/${timestamp}.jpg