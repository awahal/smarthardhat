#!/bin/bash
while
inotifywait -e attrib /var/www/html/uploads/Picture1.png;
do /bin/bash  /home/pi/Desktop/refresh.sh;
done
