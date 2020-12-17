#!/bin/bash
/data/dockerCRE/creStop.sh

#Update container
echo "Update CRE container"
# docker pull tamboraorg/creproxy:clim16n
# docker pull tamboraorg/crephp:clim16n
# docker pull tamboraorg/crenginxphp:clim16n
# docker pull tamboraorg/crepostgis:clim16n
# docker pull tamboraorg/cremysql:clim16n
# docker pull tamboraorg/creglue:clim16n

#Run containers
echo "Start CRE container"
REMDIR="$PWD"
cd /data/dockerCRE
docker-compose  --file dc-clim16n.yml up -d
cd $REMDIR

#Show status
echo "$(docker ps -a)"
echo "$(ls -l /data/dockerCRE/volumes/postgres/dumps/*/*)"

#Cleanup
echo "Cleanup containers"
docker system prune -f
