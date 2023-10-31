#!/bin/bash
while :
do
temperature=$(<~/PATH/TO/REPOSITORY/gammastep_temperature)
percentage=$(((temperature-3000)/35))
icons=("" "" "" "" "" "" "" "" "")
icon=${icons[$(((temperature-3000)/389))]}
echo "{\"text\":\"$icon\", \"tooltip\":\"$temperature\", \"percentage\":\"$percentage\"}"
#echo $icon
done
