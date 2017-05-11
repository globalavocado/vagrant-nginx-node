#!/usr/bin/env bash

# check if nginx is running on port 80
docker exec webserver bash -c "netstat -anpt|grep nginx"