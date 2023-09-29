
export GTK_IM_MODULE='ibus'
export QT_IM_MODULE='ibus'
export XMODIFIERS='@im=ibus'

while true;
do
	xsetroot -name " \
 $(uptime | awk '{print substr($(NF-2),0,length($(NF-1))-1)}') | \
 $(uptime | awk '{if (NF>10) {print substr($3$4,0,length($3$4)-1)} else {print substr($3,0,length($3)-1)}}') | \
 $(cat /sys/class/hwmon/hwmon5/temp1_input | awk '{print substr($1,0,2)"."substr($1,2,1)"°C"}') | \
 $(iwgetid -r | awk '{if (length($0)>10) {print substr($0,0,10)"..";} else {print $0}}') | \
 $(cat /sys/class/power_supply/BAT0/capacity)% | \
 $(amixer get Master | grep dB | awk '{ if ($(NF)=="[on]") {print substr($4,2,length($4)-2)} else {print substr($NF,2,length($NF)-2)}  }') | \
 $(whoami) | \
 $(date)"
	sleep 1
done & 
nitrogen --restore &
redshift -P -O 2000 &
xrandr --output eDP-1 --off --output HDMI-1 --auto &
exec dwm
