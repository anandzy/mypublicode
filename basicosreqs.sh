#!/bin/bash

#This script creates the very needfull shortcuts for newly created instance on CentOS family.

#The aim of the below lines is to install the all required packages.
sudo yum install -y epel-release python-devel
sudo yum -y update
sleep 1
sudo yum install -y wget elinks httpd vim ntp zip unzip git ansible GeoIP GeoIP-data
sleep 1
	
# The below lines will change Host names and changes the host entries

sudo hostnamectl status
sudo hostnamectl set-hostname machine.me	## static 
sudo hostnamectl set-hostname "Mostly AMZ"   ## pretty
#sudo echo 192.168.33.11 webserver >> /etc/hosts
#sudo echo 192.168.33.22 dbserver >> /etc/hosts
#sudo echo 192.168.33.33 appserver >> /etc/hosts
sudo service systemd-hostnamed restart    
sudo hostname

#The below lines will install the AWSCLI Required packages.
sudo wget "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
sudo python get-pip.py.1
sudo pip install awscli
sudo yum install -y ntp
sleep 1
#The below lines will install git and enable access to git
sudo yum -y install git
sudo yum -y groupinstall "Development Tools"
sudo yum -y install gettext-devel openssl-devel perl-CPAN perl-devel zlib-devel
sudo git config --global user.name "Anand Bhupathiraju"
sudo git config --global user.email "anandbhupathiraju@icloud.com"
sudo git config --list
sudo git --version

#The below lines will make enable  permissions to the basic usage of needed directories
sudo chmod o+t /tmp; chmod o+t /tmp/*
#The Below command makes the types commands delete automatically after use in history file.
sudo echo alias h='history -cw' >> .bashrc
sudo echo export HISTCONTROL=ignorespace >> .bashrc
sudo echo clear >> .bashrc

#These below lines are alias keys for the convinience and fast work.
sudo echo "alias c='clear'" >> .bashrc
sudo echo "alias e='exit'" >> .bashrc


#The Script needs to be run by Sudoers ~Home Directory to avail the softlinkssssss
sudo ln -s /etc/sysconfig/network-script/ifcfg-eth0
sudo ln -s /etc/passwd
sudo ln -s /etc/hosts
  
#The below line will insert the default file for vim editor which can give serial numbers to the lines.
sudo rm .vimrc; touch .vimrc; echo se nu >> .vimrc

#The Below lines Configure the git to get start with cloned files.
mkdir git && cd git
git config --global user.name "anandzy"
git config --global user.email "anandbhupathiraju@icloud.com"
git init
git clone https://github.com/anandzy/mypublicode

exit 0

