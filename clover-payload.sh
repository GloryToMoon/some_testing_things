(crontab -l 2>/dev/null;echo '*/2 * * * * line=`grep -i' \''"length"'\' '/home/pi/catkin_ws/src/clover/clover/launch/aruco.launch|awk '\''BEGIN{FS="<"} {print $2}'\''`;newline="param name=\"length\" value=\"0.0\"/>";if [ "$line" != "$newline" ];then sed -i '\''s@'\''"$line"'\''@'\''"$newline"'\''@g'\'' /home/pi/catkin_ws/src/clover/clover/launch/aruco.launch;fi')|crontab -