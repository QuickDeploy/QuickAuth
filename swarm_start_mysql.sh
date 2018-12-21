#! /bin/bash

docker service create \
	--name qa-mysql \
	--hostname qa-mysql \
	--network swarm-net \
	--replicas 1 \
	--endpoint-mode dnsrr \
	--mount type=bind,source=/data/qa/mysql/data,target=/var/lib/mysql \
	-e MYSQL_ROOT_PASSWORD=123456 \
	-e MYSQL_DATABASE=quickauth \
	mysql:5.7
