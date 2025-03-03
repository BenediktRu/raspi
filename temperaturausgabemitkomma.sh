#!/bin/bash

#cat /sys/bus/w1/devices/28-00000a549a9e/temperature |cut -c 1-2|sed 's/
#cat /sys/bus/w1/devices/28-00000a549a9e/w1_slave |grep " t="| awk '{print $10}'| sed 's/t=\(..\)\(...\)/Temp \1.\2/'
while true
do
vartemp=`cat /sys/bus/w1/devices/28-00000a549a9e/w1_slave |grep " t="| awk '{print $10}'| sed 's/t=\(..\)\(...\)/\1.\2/'`
echo Temperatur ist $vartemp °C
rrdupdate /home/russ/temperaturdatenbank1.rrd N:$vartemp
sleep 3
done


