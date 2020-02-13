#!/bin/bash

# Manage RedhHat environment
if [ -f /etc/redhat-release ] ; then
  sudo yum update
  sudo yum upgrade -y
  sudo yum install -y python python-apt python-pip

# Manage Debian / Ubuntu environment
elif [ -f /etc/debian_version ] ; then
  sudo apt-get update
  sudo apt-get upgrade -y
  sudo apt-get install -y python python-apt python-pip
fi
