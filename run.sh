#!/bin/sh

vagrant up
vagrant ssh node01.xip.io -c "docker-compose up -f /deploy_services.yml"
