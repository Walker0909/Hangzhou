#!/bin/bash

#ConTainers=`sudo docker ps -a | awk '{print $NF}' | grep -v "NAMES"`
#   for Con in ${ConTainers};do
#         sudo docker stats --no-stream ${Con}
#   done

source /etc/profile

echo "-------------------------------------------------------------" >> /tmp/Dockerstatus.log
echo `date +"%F %H:%M:%S"` >> /tmp/Dockerstatus.log
sudo /usr/bin/docker ps -a | awk '{print $NF}' | grep -v "NAMES" | grep -v "compose_mystique_1" | xargs sudo /usr/bin/docker stats --no-stream >> /tmp/Dockerstatus.log
