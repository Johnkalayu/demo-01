#!/bin/bash
#updateing the system
sudo yum update -y
#Install the most recent Docker Community Edition package
sudo amazon-linux-extras install docker
sudo yum install -y docker
#Start the Docker service.
sudo service docker start
#seting permission for docker.sock 
sudo chmod 666 /var/run/docker.sock
#adding ec2 to docker user
sudo usermod -a -G docker ec2-user