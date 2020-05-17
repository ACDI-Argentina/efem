echo ''
echo 'EFEM Dapp Feathers - Deploy Smart Contracts'
echo '-------------------------------------------'

source .setenv

cd $EFEM_DAPP_FEATHERS_SOURCE_HOME

source ~/.nvm/nvm.sh
nvm use v10.20.1

npm run deploy:rsk