echo ''
echo 'Bash Tools'
echo '-------------------------------------------'
sudo apt-get install curl
sudo apt-get install wget

echo ''
echo 'OpenJDK 8 Install'
echo '-------------------------------------------'
sudo apt install openjdk-8-jdk
java -version
# Set JAVA_HOME en /etc/environment

echo ''
echo 'YARN Install'
echo '-------------------------------------------'
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn
yarn --version

echo ''
echo 'Node.js, NPM Install'
echo '-------------------------------------------'
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt update
# This will also install NPM with node.js.
sudo apt-get install -y nodejs
node -v
npm -v

echo ''
echo 'NVM, Node.js v10 Install'
echo '-------------------------------------------'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.nvm/nvm.sh
nvm --version
nvm install v10.20.1
nvm ls