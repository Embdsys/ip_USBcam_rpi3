sudo apt-get install cmake libjpeg8-dev
wget https://github.com/jacksonliam/mjpg-streamer/archive/master.zip
unzip master.zip
cd mjp*g-*
cd mjpg-*
make
sudo make install
/usr/local/bin/mjpg_streamer -i "/usr/local/lib/mjpg-streamer/input_uvc.so -n -f 10 -r 1280x720"  -o "/usr/local/lib/mjpg-streamer/output_http.so -p 8085 -w /usr/local/share/mjpg-streamer/www"
