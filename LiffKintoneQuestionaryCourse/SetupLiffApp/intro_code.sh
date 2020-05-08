#!/bin/bash
# download and install heroku cli
curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
# clone hands-on code
git clone https://github.com/sumihiro3/liff-kintone-questionary.git app
# move to project directory
cd app
clear
# Done!!
echo "インストールが完了しました！"
