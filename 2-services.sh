echo ''
echo 'MongoDB Install'
echo '-------------------------------------------'
sudo apt update
sudo apt install mongodb
# check it is running OK:
sudo systemctl status mongodb
# If not started, run Mongo in a terminal window `mongod` or in the background `mongod --fork --syslog`

echo ''
echo 'IPFS Install'
echo '-------------------------------------------'
sudo rm -R go-ipfs
rm go-ipfs_v0.4.23_linux-amd64.tar.gz
wget https://dist.ipfs.io/go-ipfs/v0.4.23/go-ipfs_v0.4.23_linux-amd64.tar.gz
tar -xf go-ipfs_v0.4.23_linux-amd64.tar.gz
rm go-ipfs_v0.4.23_linux-amd64.tar.gz
cd go-ipfs
sudo ./install.sh
sudo ipfs init
# Make sure you do not get CORS errors:
gnome-terminal --tab --title="ipfs" -- bash -c "sudo ipfs daemon ; exec bash"
sleep 10
#gnome-terminal --tab --title="ipfs-cors1" -- bash -c "ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '[\"http://localhost\"]'; exec bash";
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '[\"http://localhost\"]'
#gnome-terminal --tab --title="ipfs-cors2" -- bash -c "ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '[\"PUT\", \"GET\", \"POST\"]'";
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '[\"PUT\", \"GET\", \"POST\"]'
ipfs config show