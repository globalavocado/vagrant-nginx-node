# Vagrant with nginx and NodeJS

## objectives
The goal is to build a Vagrant box that can deploy two Nginx application servers running a Hello World app in NodeJS.
Initially, no other software apart from Vagrant should be installed on the host machine.

## steps


### prerequesites

you only need to have Vagrant installed on your host machine.
Download it here:

- <a href="https://www.vagrantup.com/downloads.html">Vagrant</a>


### installation and deployment

1. clone the repo, and cd into it. You should have a Vagrant file in a directory called vagrant-nginx-node.

2. start Vagrant:
~~~
  ... # vagrant up --provision
~~~

3. if you need to log in and out of Vagrant do:
~~~
  ... # vagrant ssh
  ...
  ... $ logout
~~~


## other information


*starting the nginx server, spawning two application servers etc...*



