#!/bin/bash
rrdtool create /home/russ/temperaturdatenbank1.rrd --step 5 \
DS:temp1:GAUGE:600:-30:100 \
RRA:AVERAGE:0.5:1:17280 \
RRA:AVERAGE:0.5:12:43200 \
RRA:AVERAGE:0.5:120:52560 \
RRA:AVERAGE:0.5:17280:7300 \
RRA:MIN:0.5:17280:7300 \
RRA:MAX:0.5:17280:7300
