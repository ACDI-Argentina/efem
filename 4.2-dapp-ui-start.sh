echo ''
echo 'EFEM Dapp UI - Start'
echo '-------------------------------------------'

source .setenv

cd $EFEM_DAPP_UI_SOURCE_HOME

source ~/.nvm/nvm.sh
nvm use v10.20.1

npm start