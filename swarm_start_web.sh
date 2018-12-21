#! /bin/bash

docker service create \
	--name qa-web \
	--hostname qa-web \
	--network swarm-net \
	--replicas 1 \
	--publish mode=host,published=80,target=80 \
	--mount type=bind,source=/etc/localtime,target=/etc/localtime \
	--mount type=bind,source=/data/qa/web/config,target=/config \
	--mount type=bind,source=/data/qa/web/logs,target=/var/log/apache2 \
	quickdeploy/quickauth:v2.0
