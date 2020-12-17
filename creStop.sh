#!/bin/bash

#Show status
echo "$(docker ps -a)"
echo "$(ls -l ./volumes/postgres/dumps/*/*)"

#Stop containers
echo "Stop CRE containers"
#$docker stop creglue creproxy crenginxphp2 crephp2a crepostgis crenginxphp crephp cremysql
#docker rm creglue creproxy crenginxphp2 crephp2a crepostgis crenginxphp crephp cremysql
docker-compose --file dc-clim16n.yml down
