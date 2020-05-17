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

gnome-terminal --tab --title="IPFS" -- bash -c "sudo ipfs daemon ; exec bash"
sleep 30

#ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["http://localhost:3010", "http://127.0.0.1:5001"]'
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["*"]'
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["PUT", "GET", "POST"]'

ipfs config --json Gateway.HTTPHeaders.Access-Control-Allow-Methods '["PUT", "GET", "POST", "OPTIONS"]'
#ipfs config --json Gateway.HTTPHeaders.Access-Control-Allow-Origin '["http://localhost:3010", "http://127.0.0.1:5001"]'
ipfs config --json Gateway.HTTPHeaders.Access-Control-Allow-Origin '["*"]'
ipfs config --json Gateway.HTTPHeaders.Access-Control-Expose-Headers '["Ipfs-Hash"]'
#ipfs config --json Gateway.HTTPHeaders.Access-Control-Allow-Headers '["X-Requested-With"]'
ipfs config --json Gateway.Writable true

ipfs config show