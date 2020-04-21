#!/bin/bash
# -------- Build Giveth servers and app - Jurek_2019-09-27 Version 2 --------
# this file: 2-giveth-build-1st-time-V2.sh
#
# Tested on Ubuntu 18.04 2019-09-25.
# Before this script, run first: 1-giveth-build-1st-time-prerequisites-V1.sh 
#
# Open terminal and make the script executable e.g: chmod 755 ./2-giveth-build-1st-time.sh
# execute script ./2-giveth-build-1st-time.sh
#
# Repo download:
#
# Download all the repos to your repo root directory:
# repos:
#   repo/dapp-mailer
#   repo/feathers-giveth
#   repo/giveth-dapp
#
# My repo directory is /media/veracrypt1/repo. Change to fit your installation.
#
# Now goes the bash script to execute:
# ----------------------------------------------------------------------------
#export repo=/media/veracrypt1/repo
export repo=/home/mauricio/dev/project/acdi/efem

echo '--------------------------------------'
echo 'EFEM Mailer Build'
echo '--------------------------------------'
#------------- dapp-mailer
gnome-terminal --tab --title="EFEM Mailer Build" -- bash -c "cd $repo/efem-mailer && npm install ; exec bash"
cd $repo/efem-mailer
cp config/default.json config/development.json 
# set yourself as mailgun user on https://app.mailgun.com/
# change user/pass in config/development.json
# restart dapp-mailer for change to take efect.
yarn install

echo '--------------------------------------'
echo 'EFEM Feathers Build'
echo '--------------------------------------'
#------------- feathers-giveth
# This will remove mongo db for a fresh start (e.g. first time)
#gnome-terminal --tab --title="EFEM Feathers Build" -- bash -c "cd $repo/efem-feathers && echo yes | npm install && yarn deploy-local; exec bash"
gnome-terminal --tab --title="EFEM Feathers Build" -- bash -c "cd $repo/efem-feathers && echo yes | npm install ; exec bash"

echo '--------------------------------------'
echo 'EFEM Dapp Build'
echo '--------------------------------------'
#-------------- giveth-dapp
gnome-terminal --tab --title="EFEM Dapp Build" -- bash -c "cd $repo/efem-dapp && npm install && npm run build; exec bash"

# if you do not get any error, you are done. Use giveth-start.sh to start apps.
# -----------------------------------------------------------------------------
#
# -- Metamask in Chrome -- to be scripted... -----------
# Instal Metamask extension on chrome.
# Create walet in MetaMask extension (chrome).
# Import accounts keys as per video giveth-dapp/keys.
# Connect to Foreign network at 8546 .
# feathers ports 8546 8545.
#
# Have fun now.