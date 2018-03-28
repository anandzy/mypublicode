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

#!/bin/bash
yum -y update
yum -y install wget elinks httpd vim ntp zip unzip git
echo 'yum updates with install wget elinks httpd vim'
echo $
