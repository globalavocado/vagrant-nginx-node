#!/usr/bin/env bash

# fix dpgk errors
sudo ex +"%s@DPkg@//DPkg" -cwq /etc/apt/apt.conf.d/70debconf
sudo dpkg-reconfigure debconf -f noninteractive -p critical

# install Ansible
apt-get -y install software-properties-common python-software-properties
apt-add-repository ppa:ansible/ansible
apt-get -y update
apt-get -y install ansible

# install docker
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get -y update
apt-get -y install docker-ce

# copy hosts file
cp /vagrant/provision/hosts /etc/ansible/hosts

# copy ansible config file
cp /vagrant/provision/ansible.cfg /etc/ansible/ansible.cfg