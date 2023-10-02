
total_time=300

echo "passed here"

while [ $total_time -gt 0 ]; 
do
	clear
	echo $total_time
	sleep 1
	((total_time--))
done

echo "Time Expired!"

sxiv ./stop-sign.jpg
