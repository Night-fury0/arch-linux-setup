
if [ -n "$1" ]; then
	total_time=$1
else
	total_time=300
fi

echo "passed here"

while [ $total_time -gt 0 ]; 
do
	clear
	echo $total_time
	sleep 1
	((total_time--))
done

echo "Time Expired!"

sxiv ~/Pictures/stop-sign.jpg
