#!/bin/bash
# ------------- Jurek 2019-08-27 --------------------
# This file: giveth-build-1st-time-prerequisites-V1.sh 
# Run this script before installing and starting giveth servers.
# Version V1 for Ubuntu 18.05

#-------------- MongoDB --------------------

# https://www.tecmint.com/install-mongodb-on-ubuntu-18-04/

echo '--------------------------------------'
echo 'MongoDB Install'
echo '--------------------------------------'
sudo apt update
sudo apt install mongodb
# check it is running OK:
sudo systemctl status mongodb

# If not started, run Mongo in a terminal window `mongod` or in the background `mongod --fork --syslog`

# ------------------- ipfs ---------------------------
#
# Visit the IPFS installation page at https://ipfs.io/docs/install/ 
# and download the prebuilt ipfs binaries for your operating system.
# go-ipfs_v0.4.22_linux-amd64.tar - linux Ubuntu 18.04 @ 2019-09-27

# Download page: https://dist.ipfs.io/#go-ipfs

echo '--------------------------------------'
echo 'IPFS Install'
echo '--------------------------------------'
rm -R go-ipfs
rm go-ipfs_v0.4.23_linux-amd64.tar.gz
wget https://dist.ipfs.io/go-ipfs/v0.4.23/go-ipfs_v0.4.23_linux-amd64.tar.gz
tar -xf go-ipfs_v0.4.23_linux-amd64.tar.gz
cd go-ipfs
./install.sh
ipfs init

# Make sure you do not get CORS errors:
gnome-terminal --tab --title="ipfs" -- bash -c "ipfs daemon ; exec bash"

sleep 10
gnome-terminal --tab --title="ipfs-cors1" -- bash -c "ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '[\"http://localhost\"]'; exec bash"

gnome-terminal --tab --title="ipfs-cors2" -- bash -c "ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '[\"PUT\", \"GET\", \"POST\"]'";

# check:
ipfs config show
# ipfs config edit

# -------- now you are ready to install giveth servers and dapp --------------

# RSK Node
echo '--------------------------------------'
echo 'RSK Node Install'
echo '--------------------------------------'
rm rsk-node/rskj-core-1.3.0-WASABI-all.jar
wget https://github.com/rsksmart/rskj/releases/download/WASABI-1.3.0/rskj-core-1.3.0-WASABI-all.jar
mv rskj-core-1.3.0-WASABI-all.jar rsk-node/