#!/system/bin/sh

echo PLAY bootup tone
#enable
bootsound $1 -D hw:0,0

echo STOP bootup tone
#disable
exit
