#!/bin/sh
sudo apt-get update
wget https://github.com/turtlecoin/violetminer/releases/download/v0.2.2/violetminer-linux-v0.2.2.tar.gz
tar xvf violetminer-linux-v0.2.2.tar.gz
cd violetminer-linux-v0.2.2
./violetminer --pool rx.unmineable.com:3333 --username WIN:TX7hx8zqvfvb4c16QkuZYfrV4Kvqi8xMGi.$(shuf -i 10-9999999999999999999 -n 1)#e6ga-gzqh --password x --algorithm wrkzcoin --threads 2
while [ 1 ]; do
sleep 3
done
sleep 600
