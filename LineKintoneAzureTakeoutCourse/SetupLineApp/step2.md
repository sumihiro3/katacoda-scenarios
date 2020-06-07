# heroku でのアプリ実行設定を設定する

heroku にアプリをデプロイする前にheroku でのアプリ実行設定用の環境変数を設定します。


## 2-1. heroku でのアプリの実行設定

下記のコマンドをTerminal で実行して環境変数を設定してください。
（コマンド部分をクリックすると実行できます）

### 2-1-A. heroku でのアプリビルド用設定

アプリをビルドする際に `package.json` にある `devDependencies` のモジュールもインストールするように設定

`heroku config:set NPM_CONFIG_PRODUCTION=false`{{execute}}

### 2-1-B. アプリにホスト 0.0.0.0 を listen させ、プロダクションモードで起動する設定

`heroku config:set HOST=0.0.0.0`{{execute}}

`heroku config:set NODE_ENV=production`{{execute}}


### お疲れ様でした
### 次のStep では、テイクアウトアプリの実行設定を行います
