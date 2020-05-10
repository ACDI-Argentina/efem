echo ''
echo 'EFEM Dapp UI - Build'
echo '-------------------------------------------'

cd $EFEM_DAPP_UI_SOURCE_HOME

source ~/.nvm/nvm.sh
nvm use v10.20.1

npm install
# https://github.com/sass/node-sass/issues/1812
npm rebuild node-sass