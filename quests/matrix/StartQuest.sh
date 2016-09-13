#!/bin/bash
killall RoomMusic.sh
killall Doors.sh
killall mplayer

./RoomMusic.sh &
./Doors.sh &

