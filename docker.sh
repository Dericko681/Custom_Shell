#!/bin/bash
#In the virtual machine instance, docker has to be installed because it will be used very often in the VM and to install docker use the command:
echo "installing docker ..."
sudo apt update && sudo apt install docker.io -y
#After installing docker, pull an image for the VM. For example I used the docker ubuntu image which is based on ubuntu operating system. Use this command to pull the image:
echo "pulling ubuntu:latest"
sudo docker pull ubuntu:latest

##Creating a Docker Container
#To create this docker container use the command:
echo "running ubuntu"
sudo docker run -dit --name group2 ubuntu
echo "checking docker processes"
## To check if the container is running
sudo docker ps