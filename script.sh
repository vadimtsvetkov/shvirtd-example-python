#!/bin/bash

if ! command -v docker &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y docker.io docker-compose
fi

if [ ! -d "/opt/shvirtd-example-python" ] ; then
    sudo git clone https://github.com/vadimtsvetkov/shvirtd-example-python /opt/shvirtd-example-python
else
    cd /opt/shvirtd-example-python
    sudo git pull
fi

pwd

sudo docker compose -f /opt/shvirtd-example-python/compose.yaml up
