name=$(date +%Y%m%d%H%M%S)

if [ "$(pgrep ffmpeg)" == "" ];
then
	ffmpeg -y -f x11grab -video_size 1920x1080 -framerate 25 -i $DISPLAY -f alsa -i default -c:v libx264 -preset ultrafast -c:a aac ~/Screencasts/$name.mp4 > /dev/null 2> /dev/null &
	if [ $? -ne 0 ]; then
		echo "failed to start screen recording"
	else
		echo "started screen recording"
	fi

else
	kill $(pgrep ffmpeg)		
	if [ $? -ne 0 ]; then
		echo "failed to stop screen recording"
	else
		echo "stopped screen recording"
	fi
fi
