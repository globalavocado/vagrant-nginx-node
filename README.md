# Vagrant with nginx and NodeJS

## objectives
The goal is to build a Vagrant box that can deploy two Nginx application servers running a Hello World app in NodeJS.
Initially, no other software apart from Vagrant should be installed on the host machine.

## steps


### prerequesites

You need to have Vagrant and git installed on your host machine.
Download it <a href="https://www.vagrantup.com/downloads.html">here</a>.


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

3. you can access the NodeJS app in your browser

	http://localhost:8080
    

4. to log in and out of your Vagrant box:
~~~
  .../vagrant-nginx-node# vagrant ssh
  ...
  ... $ logout
~~~

## other information

*spawning two application servers, load balancing etc...*


