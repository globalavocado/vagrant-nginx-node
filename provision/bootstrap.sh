#!/usr/bin/env bash

# fix dpgk errors
sudo ex +"%s@DPkg@//DPkg" -cwq /etc/apt/apt.conf.d/70debconf
sudo dpkg-reconfigure debconf -f noninteractive -p critical

# install Ansible
apt-get -y install software-properties-common python-software-properties
apt-add-repository ppa:ansible/ansible
apt-get -y update
apt-get -y install ansible
