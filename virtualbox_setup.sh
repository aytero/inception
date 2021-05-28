#!usr/bin/env bash
set -e
MASHINE_NAME="VM_NAME"
docker-machine create --driver virtualbox ${MACHINE_NAME}
#eval $(docker-machine env ${MACHINE_NAME})
#curl $(docker-machine ip demo-machine):80
