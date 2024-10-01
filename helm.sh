#!/bin/bash
#installing git
sudo yum install git -y
#installing hlem
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 
#setting perimssion
chmod 700 get_helm.sh
./get_helm.sh
