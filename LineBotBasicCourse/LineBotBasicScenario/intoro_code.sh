#!/bin/bash
# install node.js using n
sudo npm install -g n
# change node v12.15.0
sudo n 12.16.1
# clone hands-on code
git clone https://github.com/sumihiro3/line-bot-hands-on-vol1.git example
# install dependent modules
cd example
npm install
# clear
# Done!!
echo "ソースコードのインストールが完了しました！"
