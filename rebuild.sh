#!/bin/bash

check_command_status() {
    local command_name="$1"
    if [ $? -ne 0 ]; then
        echo "Error: $command_name failed"
        exit 1
    fi
}

docker ps | grep my-apache-server > /dev/null
if [ $? -eq 0 ]; then 
  running_pid=$(docker ps | awk '{print $1}' | grep -v CON)
  echo "################################################"
  echo "Docker is already running my-apache-server, I  #"
  echo "am stopping docker process id $running_pid now #"
  echo "################################################"
  echo ""
  docker stop $running_pid > /dev/null
  check_command_status "Stopping docker failed"
fi 

docker build -t my-apache-server .  > /dev/null 2>&1 &
check_command_status "Container build"


docker run -p 8080:80 my-apache-server > /dev/null 2>&1 &
check_command_status "docker run" 

open "http://localhost:8080" 
check_command_status "Chrome open" 
 
sleep 8 

get_dockerid=$(docker ps | grep my-apache-server | awk '{print $1}')


echo "################################################"
echo "If you want to stop the docker process!        #"
echo "################################################"
echo ""
echo "$ docker stop $get_dockerid"  
echo ""
echo "################################################"
echo "or you can just rerun this script and get the same effect"
echo "################################################"

