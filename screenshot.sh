name=$(date +%Y%m%d%H%M%S)
ffmpeg -y -f x11grab -video_size 1920x1080 -i $DISPLAY -vframes 1 ~/Screenshots/$name.png > /dev/null 2> /dev/null

if [ $? -ne 0 ]; then
	echo "Failed to take Screenshot"
else
	echo "Screenshot saved as ~/Screenshots/$name.png"
fi

