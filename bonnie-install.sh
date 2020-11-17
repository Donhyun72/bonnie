#!/bin/bash
# bonnie-install.sh

apt-get update
apt-get install gcc make g++
wget https://www.coker.com.au/bonnie++/bonnie++_1.04.tgz
tar xfzp bonnie++_1.04.tgz
cd bonnie++-1.04/
./configure --prefix=/usr/local/bonnie
make
make install
