#!/bin/bash

if [[ `ps aux | egrep -i "[0-9]*:[0-9]* /usr/bin/python .*/MotionDetection/motiondetection.py -[pe] .* -[pe] .*$" | wc -l` < 1 ]]; then 
	/usr/bin/python /home/pi/Documents/Python/MotionDetection/MotionDetection.py -e 'sshmonitorapp@gmail.com' -p 'GHOST21ghost';
fi

if [[ `ps aux | egrep -i "[0-9]*:[0-9]* /usr/bin/python .*/MotionDetection/motiondetection.py -[pe] .* -[pe] .*$" | wc -l` > 1 ]]; then 
	kill -9 `ps aux | egrep -i "motiondetection.py" | awk '{print $2}'`;
fi
