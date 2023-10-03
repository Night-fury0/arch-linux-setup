nmcli dev wifi rescan
nmcli dev wifi connect <network-with-camera-ssid>

if [ $? -ne 0 ]; then
	echo "Error in connecting to the required network"
else
	if [$1 == ""];	then
		cvlc "rtsp://<user>:<pass>@<ip-address>:554/00" &
		cvlc "rtsp://<user>:<pass>@<ip-address>:554/10" &
		cvlc "rtsp://<user>:<pass>@<ip-address>:554/20" &	
		cvlc "rtsp://<user>:<pass>@<ip-address>:554/30" ;
	else
		cvlc "rtsp://<user>:<pass>@<ip-address>:554/$10" ;
	fi
fi

nmcli dev wifi connect <network-ssid> 




