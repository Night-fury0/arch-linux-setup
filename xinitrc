#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

while true;
do
	xsetroot -name "Load Average $(uptime | awk '{print substr($8,0,length($8)-1)}') | Uptime $(uptime | awk '{print substr($3,0,length($3)-1)}') | CPU $(sensors|grep CPU|awk '{print $2'}) | Battery $(cat /sys/class/power_supply/BAT0/capacity)% | User $(whoami) | $(date)"
	sleep 1
done &

nitrogen --restore &
redshift -P -O 2000 &
xrandr --output eDP-1 --off --output HDMI-1 --auto &
exec dwm
