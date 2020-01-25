#!/bin/bash

#
# Script to install Java 8 (from tar file), on your linux machine
# Link: https://www.javahelps.com/2015/03/install-oracle-jdk-in-ubuntu.html
#

cd Downloads
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz

sudo mkdir /usr/lib/jvm
cd /usr/lib/jvm
sudo tar -xvzf ~/Downloads/jdk-8u131-linux-x64.tar.gz

echo 'PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/jdk1.8.0_131/bin:/usr/lib/jvm/jdk1.8.0_131/db/bin:/usr/lib/jvm/jdk1.8.0_131/jre/bin"' >> /etc/environment
echo 'J2SDKDIR="/usr/lib/jvm/jdk1.8.0_131"' >> /etc/environment
echo 'J2REDIR="/usr/lib/jvm/jdk1.8.0_131/jre"' >> /etc/environment
echo 'JAVA_HOME="/usr/lib/jvm/jdk1.8.0_131"' >> /etc/environment
echo 'DERBY_HOME="/usr/lib/jvm/jdk1.8.0_131/db"' >> /etc/environment

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.8.0_131/bin/java" 0
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0_131/bin/javac" 0
sudo update-alternatives --set java /usr/lib/jvm/jdk1.8.0_131/bin/java
sudo update-alternatives --set javac /usr/lib/jvm/jdk1.8.0_131/bin/javac

update-alternatives --list java
update-alternatives --list javac

echo "Successfully installed Java 8!"
