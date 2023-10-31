#!/bin/bash

temperature=$(<gammastep_temperature)
oldpid=$(<gammastep_pid)
temperature=$((temperature + $1))

if [ $temperature -gt 6500 ]; then
	temperature=6500
elif [ $temperature -lt 3000 ]; then
	temperature=3000
else
	echo $temperature > gammastep_temperature
	exec gammastep -Pr -O $temperature &
	pid=$!
	echo $pid > gammastep_pid
	kill $oldpid
fi
