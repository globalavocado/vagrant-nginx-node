# Vagrant with Ansible, Nginx and NodeJS

## objectives
This repo can be used to create a Vagrant box, which uses Ansible to deploy two Nginx application servers running a NodeJS 'Hello World' application. It includes verification that Nginx is listening on port 80, as well as giving passwordless sudo access to the vagrant user and sudo rights for all members of the admin group. Extra care was taken that all actions are [idempotent](https://en.wiktionary.org/wiki/idempotent) and this is largely the case when using Ansible modules.
Apart from Vagrant, no other software should be needed on the host machine.

## steps


### prerequesites

You need to have Vagrant installed on your host machine, which you can get [here](https://www.vagrantup.com/downloads.html").


### installation and deployment

1. clone the repo and change into that directory 
~~~
  ...# git clone git@github.com:globalavocado/vagrant-nginx-node.git
  ...# cd vagrant-nginx-node
~~~

2. start the Vagrant box
~~~
  .../vagrant-nginx-node# vagrant up --provision
~~~

3. log into your Vagrant box, change into the directory with the provisioning files and run the playbook
~~~
  .../vagrant-nginx-node# vagrant ssh

  ... vagrant@localhost$ cd /provision
  
  ... vagrant@localhost/provision$ sudo ansible-playbook -i hosts playbook.yml
~~~

4. you can now access the NodeJS app in your browser

	http://localhost:8080
    

5. log out of your Vagrant box
~~~
  ... $ logout
~~~

## future development

*extend it to deploy two application servers, including load balancing and verification that nginx is running on the correct port*