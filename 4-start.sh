#!/bin/bash
# -------- Start giveth servers and app - Jurek_2019-09-29 --------
#
# Tested on Ubuntu 18.04
# Open terminal, make the script executable e.g: chmod 755 ./giveth-start-V2.sh
# Execute the script ./giveth-start-V2.sh
# 

# The repo dir is where the root dir of your repos, from github is.
# On my laptop it is on:
# This script will open multiple tabs in one terminal window.
export repo=/home/mauricio/dev/project/acdi/efem

echo '--------------------------------------'
echo 'RSK Node Start'
echo '--------------------------------------'
gnome-terminal --tab --title="RSK Node Start" -- bash -c "cd rsk-node && java -jar -Drsk.conf.file=regtest.conf rskj-core-1.3.0-WASABI-all.jar co.rsk.Start ; exec bash"

echo '--------------------------------------'
echo 'IPFS Start'
echo '--------------------------------------'
#gnome-terminal --tab --title="start ipfs" -- bash -c "ipfs daemon ; exec bash"
ipfs daemon

echo '--------------------------------------'
echo 'EFEM Mailer Start'
echo '--------------------------------------'
sleep 5
gnome-terminal --tab --title="EFEM Mailer Start" -- bash -c "cd $repo/efem-mailer && yarn start ; exec bash"

# https://github.com/trufflesuite/ganache-cli/issues/134
# change this line require("./build/Release/scrypt") to require("scrypt") from '/node_modules/scrypt/index.js'
echo '--------------------------------------'
echo 'EFEM Feathers Start'
echo '--------------------------------------'
sleep 10
#gnome-terminal --tab --title="EFEM Feathers Start networks" -- bash -c "cd $repo/efem-feathers && yarn start:networks ; exec bash"
gnome-terminal --tab --title="EFEM Feathers Start networks" -- bash -c "cd $repo/efem-feathers && npm run deploy-local:rsk ; exec bash"
sleep 20
#gnome-terminal --tab --title="EFEM Feathers Start" -- bash -c "cd $repo/efem-feathers && yarn start; exec bash"
gnome-terminal --tab --title="EFEM Feathers Start" -- bash -c "cd $repo/efem-feathers && yarn start:rsk; exec bash"
echo '--------------------------------------'
echo 'EFEM Dapp Start'
echo '--------------------------------------'
sleep 30
gnome-terminal --tab --title="EFEM Dapp Start" -- bash -c "cd $repo/efem-dapp && npm start; exec bash"

(started http://localhost:3010/)
# You may play with delays, as they depend on your hardware.
# Inspect all the tabs for errors. You still need to configure MetaMask accounts in chrome.
# I get an error in feathers start:
# "address is not defined
# at fundAccountsWithLowBalance (/media/veracrypt1/repo/feathers-giveth/src/blockchain/balanceMonitor.js:37:5).."
# Server still works so...

# If all went well, you should get on dapp tab:
# "Compiled successfully!
# You can now view giveth-dapp in the browser.
#  Local:            http://localhost:3010/
#  On Your Network:  http://192.168.43.137:3010/
# Note that the development build is not optimized.
# To create a production build, use npm run build."


 

