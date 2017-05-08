# Vagrant with nginx and NodeJS

## objectives
The goal is to build a Vagrant box that can deploy two Nginx application servers running a Hello World app in NodeJS.
Apart from Vagrant, no other software should be needed on the host machine.

## steps


### prerequesites

You need to have Vagrant installed on your host machine, which you can get <a href="https://www.vagrantup.com/downloads.html">here</a>.


### installation and deployment

1. Clone the repo and change into that directory. 
~~~
  ...# git clone git@github.com:globalavocado/vagrant-nginx-node.git
  ...# cd vagrant-nginx-node
~~~

2. start the Vagrant box:
~~~
  .../vagrant-nginx-node# vagrant up --provision
~~~

3. log into your Vagrant box:
~~~
  .../vagrant-nginx-node# vagrant ssh
~~~

3. change into the directory with the provisioning files and run the playbook

~~~
  ... vagrant@localhost$ cd /provision

  ... vagrant@localhost/provision$ sudo ansible-playbook -i hosts playbook.yml
~~~

4. you can now access the NodeJS app in your browser

	http://localhost:8080
    

5. to log out of your Vagrant box:
~~~
  ... $ logout
~~~

## future development

*deploy two application servers, load balancing, test they are running etc...*


