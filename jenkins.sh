#!/bin/bash
# update the server
sudo yum update 
#installing java-11
sudo amazon-linux-extras install java-openjdk11
#installing jenkins server
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
#Import a key file from Jenkins-CI to enable installation from the package
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
#upgradeing and installing jnekins 
sudo yum upgrade -y   
sudo yum install jenkins -y
#Enable the Jenkins service to start at boot:
sudo systemctl enable jenkins
sudo systemctl restart jenkins
sudo systemctl start jenkins
