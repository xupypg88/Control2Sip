#!/bin/bash

function setPin {
	echo "$1" > /sys/class/gpio/export
	echo "$2" > /sys/class/gpio/gpio${2}/direction
}

#Rooms
setPin 17 in
setPin 27 in
setPin 22 in

#Doors
setPin 5 in
setPin 6 in
setPin 13 in
setPin 19 in
setPin 26 in
setPin 16 in
setPin 20 in
setPin 21 in

