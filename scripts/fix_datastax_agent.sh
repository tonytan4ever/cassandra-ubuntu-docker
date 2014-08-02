#!/usr/bin/env bash

# install agent on a cassandra docker
sudo apt-get -y install datastax-agent

if [ ! -f /var/lib/datastax-agent/conf/address.yaml ]; then
    sudo touch /var/lib/datastax-agent/conf/address.yaml
fi

echo "stomp_interface: <reachable_opscenterd_ip>" | sudo tee -a /var/lib/datastax-agent/conf/address.yaml

sudo service datastax-agent start
