#!/bin/bash

    sudo apt install -y docker docker-compose-v2

if [ ! -d "/opt/shvirtd-example-python" ] ; then
    sudo git clone https://github.com/vadimtsvetkov/shvirtd-example-python /opt/shvirtd-example-python
else
    cd /opt/shvirtd-example-python
    sudo git pull
fi

pwd

sudo docker compose -f compose.yaml up
