if [ "$(pgrep ffmpeg)" == "" ];
then
	ffmpeg -y -f x11grab -video_size 1920x1080 -framerate 25 -i $DISPLAY -f alsa -i default -c:v libx264 -preset ultrafast -c:a aac screen.mp4 > /dev/null &
else
	kill $(pgrep ffmpeg)		
fi
