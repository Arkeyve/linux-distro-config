ipaddr=`ip address show dev wlan0 | grep -o inet\ [0-9.]* | grep -o [0-9.]*`;
sed -i "s/DB_HOST=.*/DB_HOST=$ipaddr/g" /home/leaf/docker_containers/firefly-iii/.env
sudo docker-compose -f /home/leaf/docker_containers/firefly-iii/docker-compose.yml up -d

