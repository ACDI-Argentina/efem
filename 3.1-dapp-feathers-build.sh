echo ''
echo 'EFEM Dapp Feathers - Build'
echo '-------------------------------------------'

source .setenv

cd $EFEM_DAPP_FEATHERS_SOURCE_HOME

source ~/.nvm/nvm.sh
nvm use v10.20.1

npm install