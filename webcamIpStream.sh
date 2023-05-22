sudo apt-get install cmake libjpeg8-dev
wget https://github.com/jacksonliam/mjpg-streamer/archive/master.zip
unzip master.zip
cd mjp*g-*
cd mjpg-*
make
sudo make install

#Copy files to system
sudo cp mjpg_streamer /usr/local/bin
sudo cp output_http.so input_file.so /usr/local/lib/
sudo cp -R www /usr/local/www
mkdir /tmp/stream
#Run stream on port 8080
#NOTE May/2023 If there is no feed on the camera try changing the /dev/video1 to your devices location (find it using ls /dev/video)
LD_LIBRARY_PATH=/usr/local/lib mjpg_streamer -i "input_uvc.so -d /dev/video1" -o "output_http.so -w /usr/local/www" 
