#!/bin/bash

#This script creates the very needfull shortcuts for newly created instance on CentOS family.

#The aim of the below lines is to install the all required packages.
yum install -y epel-release python-devel
yum -y update
sleep 1
yum install -y wget elinks httpd vim ntp zip unzip git ansible GeoIP GeoIP-data
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
yum install -y ntp
sleep 1
#The below lines will install git and enable access to git
sudo yum -y install git
sudo yum groupinstall "Development Tools"
sudo yum install gettext-devel openssl-devel perl-CPAN perl-devel zlib-devel
git config --global user.name "Anand Bhupathiraju"
git config --global user.email "anandbhupathiraju@icloud.com"
git config --list
git --version

#The below lines will make enable  permissions to the basic usage of needed directories
chmod o+t /tmp; chmod o+t /tmp/*
#The Below command makes the types commands delete automatically after use in history file.
echo alias h='history -cw' >> .bashrc
echo export HISTCONTROL=ignorespace >> .bashrc
echo clear >> .bashrc

#These below lines are alias keys for the convinience and fast work.
echo alias c='clear' >> .bashrc
echo alias e='exit' >> .bashrc


#The Script needs to be run by Sudoers ~Home Directory to avail the softlinkssssss
ln -s /etc/sysconfig/network-script/ifcfg-eth0
ln -s /etc/passwd
ln -s /etc/hosts
  
#The below line will insert the default file for vim editor which can give serial numbers to the lines.
rm .vimrc; touch .vimrc; echo se nu >> .vimrc
