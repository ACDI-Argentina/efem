# -------------- Tools --------------------

# YARN install
echo '--------------------------------------'
echo 'YARN Install'
echo '--------------------------------------'
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn

# NPM, Node install
echo '--------------------------------------'
echo 'NPM, Node.js Install'
echo '--------------------------------------'
sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt update
# This will also install NPM with node.js.
sudo apt-get install nodejs

# OpenJDK 8
echo '--------------------------------------'
echo 'OpenJDK 8 Install'
echo '--------------------------------------'
sudo apt install openjdk-8-jdk
# Set JAVA_HOME en /etc/environment

# Ganache
#sudo apt install libcanberra-gtk-module libcanberra-gtk3-module

echo 'YARN Version'
yarn --version

echo 'NPM Version'
npm -v

echo 'Node Version'
node -v