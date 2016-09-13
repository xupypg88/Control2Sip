#!/bin/bash
while [ 1 ]; do
	mplayer -loop 0 1.mp3 &
	while [ `cat gpio11` == "0" ]; do
		sleep 0.2
	done
	killall mplayer

	mplayer -loop 0 2.mp3 &
	while [ `cat gpio12` == "0" ]; do
		sleep 0.2
	done
	killall mplayer

	mplayer -loop 0 3.mp3 &
	while [ `cat gpio13` == "0" ]; do
		sleep 0.2
	done
	killall mplayer
done
