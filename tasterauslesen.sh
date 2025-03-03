#!/bin/bash
pinctrl set 21 op 
 
while true;
do 
pinctrl get 13 |grep hi &&  pinctrl set 21 dh
sleep 0.0001  
pinctrl set 21 dl


done
