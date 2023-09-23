
total_time=3600

echo "passed here"

while [ $total_time -gt 0 ]; 
do
	clear
	echo $total_time
	sleep 1
	((total_time--))
done

echo "Time Expired!"

xdg-open ./stop-sign.jpg
