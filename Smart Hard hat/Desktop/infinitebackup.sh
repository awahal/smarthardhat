#!/bin/bash
while :
do
	cat file2 | ./write_index.sh > /var/www/html/GPS.html
	sleep 10
done
