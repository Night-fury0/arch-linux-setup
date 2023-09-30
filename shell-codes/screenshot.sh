ffmpeg -y -f x11grab -video_size 1920x1080 -i $DISPLAY -vframes 1 ~/Screenshots/$(date +%Y%m%d%H%M%S
).png
