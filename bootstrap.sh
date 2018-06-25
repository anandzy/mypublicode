#!/bin/bash

#The Below lines Configure the git to get start with cloned files.
sudo yum -y install git
#The below two lines can be ignore if you really care about memory.
sudo yum -y groupinstall "Development Tools"
sudo yum -y install gettext-devel openssl-devel perl-CPAN perl-devel zlib-devel
sudo git config --global user.name "Anand Bhupathiraju"
sudo git config --global user.email "anandbhupathiraju@icloud.com"
mkdir git && cd git
sudo git init
sudo git clone https://github.com/anandzy/mypublicode
sudo chmod 777 /home/ec2-user/git/mypublicode/*
sudo sh /home/ec2-user/git/mypublicode/basicosreqs.sh

exit 0