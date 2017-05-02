#!/bin/bash
while :
do
read line < /home/pi/Desktop/file2
echo $line
echo '<!DOCTYPE html>' > /var/www/html/GPS.html
echo '<html>' >> /var/www/html/GPS.html
echo  '<head>' >> /var/www/html/GPS.html
echo    '<style>' >> /var/www/html/GPS.html
echo       '#map {' >> /var/www/html/GPS.html
echo        'height: 400px;' >> /var/www/html/GPS.html
echo        'width: 100%;' >> /var/www/html/GPS.html
echo       '}' >> /var/www/html/GPS.html
echo    '</style>' >> /var/www/html/GPS.html
echo   '<META HTTP-EQUIV="refresh" CONTENT="15">' >> /var/www/html/GPS.html
echo  '</head>' >> /var/www/html/GPS.html
echo  '<body>' >> /var/www/html/GPS.html
echo	'<center>' >> /var/www/html/GPS.html
echo    '<div id="map"></div>' >> /var/www/html/GPS.html
echo    '<script>' >> /var/www/html/GPS.html
echo      'function initMap() {' >> /var/www/html/GPS.html
echo        'var uluru = {' >> /var/www/html/GPS.html
echo $line >> /var/www/html/GPS.html
echo '};' >> /var/www/html/GPS.html
echo        "var map = new google.maps.Map(document.getElementById('map'), {" >> /var/www/html/GPS.html
echo          'zoom: 16,' >> /var/www/html/GPS.html
echo          'center: uluru' >> /var/www/html/GPS.html
echo        '});' >> /var/www/html/GPS.html
echo        'var marker = new google.maps.Marker({' >> /var/www/html/GPS.html
echo          'position: uluru,' >> /var/www/html/GPS.html
echo          'map: map' >> /var/www/html/GPS.html
echo        '});' >> /var/www/html/GPS.html
echo      '}' >> /var/www/html/GPS.html
echo    '</script>' >> /var/www/html/GPS.html
echo    '<script async defer' >> /var/www/html/GPS.html
echo    'src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB0YWodkzEUTZxpx5F1ow_OmUXk8UoQc7M&callback=initMap">' >> /var/www/html/GPS.html
echo    '</script>' >> /var/www/html/GPS.html
echo	'</center>' >> /var/www/html/GPS.html
echo  '</body>' >> /var/www/html/GPS.html
echo '</html>' >> /var/www/html/GPS.html

	sleep 10
	#rm /var/www/html/GPS.html
done
