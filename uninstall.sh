#!/bin/bash

echo 'Warning !'

echo 'It is dangerous to run this script as it would erase all the data'

echo 'Do not run this script unless you absolutely know what will happen'

echo 'You may press Ctrl+C now to abort this script'

echo ''

echo '+Sleep 10'

sleep 10



docker service rm qa-web

docker service rm qa-mysql

docker service rm qa-redis


rm -rf /data/qa/

docker rmi redis:5
docker rmi mysql:5.7
docker rmi quickdeploy/quickauth:v2.0

echo "All data & services removed !"