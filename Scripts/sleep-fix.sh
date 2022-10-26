#!/bin/zsh
set -e

sudo pmset -a standby 0​
sudo pmset -a autopoweroff 0​
sudo pmset -a powernap 0​
sudo pmset -a proximitywake 0​
sudo pmset -a tcpkeepalive 0
sudo pmset -a lidwake 0​
sudo pmset -a lidwake 1
sudo pmset -a hibernatemode 0​
sudo rm /var/vm/sleepimage​
sudo mkdir /var/vm/sleepimage
