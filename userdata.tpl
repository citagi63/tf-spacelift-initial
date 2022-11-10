#!/bin/bash
sudo apt-get update -y &&
sudo apt-get install -y \
apt-transport-https \
ca-certificates \
curl \
gnupg-agent \
software-properties-common &&
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" &&
sudo apt-get update -y &&
sudo sudo apt-get install docker-ce docker-ce-cli containerd.io -y &&
sudo usermod -aG docker ubuntu
sudo docker pull nginx
sudo docker run -it -d -p 80:80 --name nginx nginx
cd /opt
sudo apt update -y
sudo apt-get install -y openjdk-11-jdk
sudo apt install maven -y
sudo apt install git -y
sudo git clone https://github.com/citagi63/webapp.git
cd webapp
sudo mvn  package -U -e
sudo docker build -t vtomcat .
sudo docker run -it -d -p 8080:8080 vtomcat
