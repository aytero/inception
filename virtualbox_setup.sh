#!usr/bin/env bash
set -e
#MASHINE_NAME="inc_vb"
#docker-machine create --driver virtualbox ${MACHINE_NAME}
#docker-machine env ${MACHINE_NAME}
#eval "$(docker-machine env ${MACHINE_NAME})"
#curl $(docker-machine ip ${MACHINE_NAME}):443
docker-machine create --driver virtualbox incvb
docker-machine env incvb
eval "$(docker-machine env incvb)"
