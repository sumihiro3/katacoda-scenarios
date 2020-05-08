# アプリをheroku に登録する

このシナリオを開始した時点で、heroku CLI とソースコードのセットアップが自動で実行されます。
画面右側のTerminal に `インストールが完了しました！` と表示されればセットアップが完了しています。（環境などによって時間がかかる場合があります）


## 1-1. heroku にログインする

Terminal で以下のコマンドを実行し、heroku に登録したメールアドレスとパスワードを入力してログインする

`heroku login --interactive`{{copy}}


## 1-2. heroku アプリを作成する

無料で5つまで作成でき、クレジットカードを登録すれば作成枠が増えます。
アプリの名前は全体で一意になるようにしてください。英小文字、数字、-(ハイフン)のみ使用可能です。

`heroku create ldc-20200511-${your_name}`{{copy}}

**※ `${your_name}` 部分は、ご自分の名前やニックネームなど他の方と被らない名称を入力してください。**

作成されたらURL が出力されます。LIFFの作成時に必要となるので、控えておいてください。

`https://ldc-20200511-${your_name}.herokuapp.com`


## 1-3. heroku アプリとリポジトリを紐づける

`heroku git:remote -a ldc-20200511-${your_name}`{{copy}}

<font color="red">**※ `${your_name}` 部分は、ご自分の名前やニックネームなど他の方と被らない名称を入力してください。**</font>


## 1-4. git の初期設定

git リポジトリを利用できるよう初期設定を行います。

`git config --global user.email ${your_mail}`{{copy}}

<font color="red">※ `${your_mail}` 部分はご自身のメールアドレスに置き換えてください。</font><br>

`git config --global user.name ${your_name}`{{copy}}

<font color="red">※ `${your_name}` 部分はご自身の名前に置き換えてください。</font><br>

### お疲れ様でした
### 次のStep では、heroku アプリの設定を行います
