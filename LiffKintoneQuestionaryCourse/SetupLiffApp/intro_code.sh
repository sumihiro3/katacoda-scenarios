#!/bin/bash
# install node.js using n
sudo npm install -g n
# download and install heroku cli
curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
# change node v12.16.3
sudo n 12.16.3
# clone hands-on code
git clone https://github.com/sumihiro3/liff-kintone-questionary.git example
# install dependent modules
cd example
npm install
clear
# Done!!
echo "インストールが完了しました！"
