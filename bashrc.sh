#User Level .bashrc
echo alias c=clear >> .bashrc
echo alias e=exit >> .bashrc
echo clear >> .bashrc
echo sudo -i >> .bashrc

#Root Level .bashrc
echo alias c=clear >> .bashrc
echo alias e=exit >> .bashrc
echo clear >> .bashrc
echo echo ***Welcome to Root Privilage!*** >> .bashrc

#Hostname 
hostnamectl status
hostnamectl set-hostname geeklab    ## static
hostnamectl set-hostname "Geeks LAB"   ## pretty
hostnamectl
cat /etc/hostname
echo "newḧostname" > /etc/hostname
cat /etc/hosts
echo xxx.xxx.xxx.xxx newhostname >> /etc/hosts


#!/bin/bash
yum -y update
yum -y install wget elinks httpd vim ntp zip unzip git
echo 'yum updates with install wget elinks httpd vim'
echo $
