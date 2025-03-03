#!/bin/bash

cat /sys/bus/w1/devices/28-00000a549a9e/temperature |cut -c 1-2
cat /sys/bus/w1/devices/28-00000a549a9e/w1_slave |grep " t="| awk '{print $10}'| cut -c 3-5

