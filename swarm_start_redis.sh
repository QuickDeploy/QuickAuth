#! /bin/bash

docker service create \
	--name qa-redis \
	--hostname qa-redis \
	--network swarm-net \
	--replicas 1 \
	--endpoint-mode dnsrr \
	--mount type=bind,source=/etc/localtime,target=/etc/localtime \
	--mount type=bind,source=/data/qa/redis,target=/data \
	redis:5 redis-server --appendonly yes
