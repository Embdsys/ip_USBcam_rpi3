**This bash script will install MJPG-STREAMER on your RPi3**

To access the USB camera connected to the RPI over IP, in your browser go to:

http://123.123.10.123:8085/index.html

Follow this guide if you encounter issues:\n
https://www.sigmdel.ca/michel/ha/rpi/streaming_en.html\n

Updated instructions:\n
https://blog.miguelgrinberg.com/post/how-to-build-and-run-mjpg-streamer-on-the-raspberry-pi

Need to copy files from the build mjpg-streamer folder into the system files
sudo cp mjpg_streamer /usr/local/bin    \n
sudo cp output_http.so input_file.so /usr/local/lib/     \n
sudo cp -R www /usr/local/www       \n
mkdir /tmp/stream     \n
LD_LIBRARY_PATH=/usr/local/lib mjpg_streamer -i "input_file.so -f /tmp/stream -n pic.jpg" -o "output_http.so -w /usr/local/www"  <--This will start the server on http://192.168.0.x:8080/
