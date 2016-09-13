#!/bin/bash
lock1=0
lock2=0
lock3=0
lock4=0
lock5=0
lock6=0
lock7=0
lock8=0
lock9=0
lock10=0

$gpio1="/sys/class/gpio/gpio5/value"
$gpio2="/sys/class/gpio/gpio6/value"
$gpio3="/sys/class/gpio/gpio13/value"
$gpio4="/sys/class/gpio/gpio19/value"
$gpio5="/sys/class/gpio/gpio26/value"
$gpio6="/sys/class/gpio/gpio12/value"
$gpio7="/sys/class/gpio/gpio16/value"
$gpio8="/sys/class/gpio/gpio20/value"
$gpio9="/sys/class/gpio/gpio21/value"
$gpio10="/sys/class/gpio/gpio4/value"

while [ 1 ]; do
	if [ `cat $gpio1` == 1 ]; then
		if [ $lock1 == 0 ]; then
			mplayer 10.mp3 &
			let lock1=1
		fi
	else
		let lock1=0
	fi
        if [ `cat $gpio2` == 1 ]; then
                if [ $lock2 == 0 ]; then
                        mplayer 20.mp3 &
                        let lock2=1
                fi
        else
                let lock2=0
        fi

        if [ `cat gpio3` == 1 ]; then
                if [ $lock3 == 0 ]; then
                        mplayer 30.mp3 &
                        let lock3=1
                fi
        else
                let lock3=0
        fi

        if [ `cat $gpio4` == 1 ]; then
                if [ $lock4 == 0 ]; then
                        mplayer 40.mp3 &
                        let lock4=1
                fi
        else
                let lock4=0
        fi

        if [ `cat $gpio5` == 1 ]; then
                if [ $lock5 == 0 ]; then
                        mplayer 50.mp3 &
                        let lock5=1
                fi
        else
                let lock5=0
        fi

        if [ `cat $gpio6` == 1 ]; then
                if [ $lock6 == 0 ]; then
                        mplayer 60.mp3 &
                        let lock6=1
                fi
        else
                let lock6=0
        fi

        if [ `cat $gpio7` == 1 ]; then
                if [ $lock7 == 0 ]; then
                        mplayer 70.mp3 &
                        let lock7=1
                fi
        else
                let lock7=0
        fi

        if [ `cat $gpio8` == 1 ]; then
                if [ $lock8 == 0 ]; then
                        mplayer 80.mp3 &
                        let lock8=1
                fi
        else
                let lock8=0
        fi

        if [ `cat $gpio9` == 1 ]; then
                if [ $lock9 == 0 ]; then
                        mplayer 90.mp3 &
                        let lock9=1
                fi
        else
                let lock9=0
        fi

        if [ `cat $gpio10` == 1 ]; then
                if [ $lock10 == 0 ]; then
                        killall mplayer
			killall Doors.sh
			killall RoomMusic.sh
			killall StartQuest.sh
                        let lock10=1
                fi
        else
                let lock10=0
        fi

	sleep 0.1
done
