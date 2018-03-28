#!/bin/bash
yum -y update
yum -y install wget elinks httpd vim ntp zip unzip git
echo 'yum updates with install wget elinks httpd vim'
echo $

#Installing PIP-Python RHEL
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
sudo python get-pip.py
sudo pip install awscli

#or Installing PIP-Python
yum install python-pip
pip install --upgrade pip

#Installing AWS-CLI
pip install awscli --upgrade --user
pip -V
echo $ 

#NTP Installing
yum -y install ntp
sed -i "s/centos/amazon/g" /etc/ntp.conf
service ntpd restart
date -u
telnet s3.amazonaws.com 80
GET / HTTP/1.0
ntpstat
echo $

#Terraform
#mv terraform /usr/local/bin/
mkdir terra
cd terra
wget https://releases.hashicorp.com/terraform/0.9.8/terraform_0.9.8_linux_amd64.zip
unzip terraform_0.9.8_linux_amd64.zip
echo PATH=/root/terra/:$PATH >> .bash_profile
cd ~
echo Succesully Installed Terraform.
terraform --version
echo $?

# Java, Java C, Jar Installing on cent OS
cd /opt/
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.tar.gz"
tar xzf jdk-8u161-linux-x64.tar.gz
cd /opt/jdk1.8.0_161/
alternatives --install /usr/bin/java java /opt/jdk1.8.0_161/bin/java 2
alternatives --config java
alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_161/bin/jar 2
alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_161/bin/javac 2
alternatives --set jar /opt/jdk1.8.0_161/bin/jar
alternatives --set javac /opt/jdk1.8.0_161/bin/javac
#Export the below export paths to .bash_profile
export JAVA_HOME=/opt/jdk1.8.0_161
export JRE_HOME=/opt/jdk1.8.0_161/jre
export PATH=$PATH:/opt/jdk1.8.0_161/bin:/opt/jdk1.8.0_161/jre/bin
java -version
jar
javac
echo $


#Java Installation on RHEL
yum install java-1.8.0-openjdk
echo $

#Installing Jenkins in RHEL
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
echo 1
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
echo 2
yum -y install jenkins
echo Sucessfully Installed
echo $

#Installation of ansible
yum install epel-release
yum install ansible
echo $

#Installation of chef
wget https://packages.chef.io/files/stable/chef-server/12.17.33/el/7/chef-server-core-12.17.33-1.el7.x86_64.rpm
rpm -Uvh


