#!/bin/bash

export REPO_NAME=sattvik/sattvik-site
export SERVICE_NAME=sattvik-site-master

export REPO_FULL_NAME=registry.sraak.com/$REPO_NAME:`git rev-parse HEAD`
docker build -t $REPO_FULL_NAME .
docker push $REPO_FULL_NAME

ssh root@$1 -p 2222 "docker service create --network sraakinfra --replicas 1 --name $SERVICE_NAME --hostname $SERVICE_NAME $REPO_FULL_NAME || docker service update --image $REPO_FULL_NAME $SERVICE_NAME"
