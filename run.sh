#!/bin/sh

apt install ansible

ansible-galaxy install -r requirements.yml

vagrant up
vagrant ssh node01.xip.io -c "docker-compose up -f /deploy_services.yml"
