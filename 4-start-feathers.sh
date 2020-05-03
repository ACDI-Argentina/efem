
echo ''
echo 'EFEM Feathers Start'
echo '--------------------------------------'

cd ..
cd efem-dapp-feathers

# NVM
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.nvm/nvm.sh
#nvm install v10.20.1
nvm use

# https://github.com/nodejs/node-gyp/issues/1941
# node-gyp fails with node 12.13.0
# Se debe ejecutar con Node 10.X
# https://github.com/nodesource/distributions/blob/master/README.md

npm install

# Inicio de RSK Node
gnome-terminal --tab --title="Start RSK Node" -- bash -c "npm run start:network:rsk; exec bash"

sleep 60

# Despliegue
gnome-terminal --tab --title="Deploy" -- bash -c "npm run deploy:rsk; exec bash"