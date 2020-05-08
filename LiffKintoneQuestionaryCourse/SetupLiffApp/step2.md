# LIFF アプリの環境変数を設定する

heroku にアプリをデプロイする前に環境変数を設定します。

## 2-1. アプリの実行設定

下記のコマンドをTerminal にコピペして実行してください。

`heroku config:set NPM_CONFIG_PRODUCTION=false`{{copy}}

`heroku config:set HOST=0.0.0.0`{{copy}}

`heroku config:set NODE_ENV=production`{{copy}}

`heroku config:set USE_VCONSOLE=true`{{copy}}

`heroku config:set SKIP_LOGIN=false`{{copy}}

`heroku config:set API_URL=$(heroku info -s | grep web_url | cut -d= -f2) `{{copy}}


## 2-2. kintone アプリとの連携設定

### 2-2-A. アプリのAPI トークン

`heroku config:set KINTONE_APP_API_TOKEN=${kintone-app-api-token}`{{copy}}

**${kintone-app-api-token} 部分は、ご自分のkintone 環境に合わせて変更してください**

例

```bash
heroku config:set KINTONE_APP_API_TOKEN=XXXXXXXXXXXXXXXX
```

### 2-2-B. アプリのドメイン

`heroku config:set KINTONE_APP_DOMAIN=${kintone-app-domain}`{{copy}}

**${kintone-app-api-domain} 部分は、ご自分のkintone 環境に合わせて変更してください**

例

```bash
heroku config:set KINTONE_APP_DOMAIN=dev-foobar.cybozu.com
```

### 2-2-C. アプリID

`heroku config:set KINTONE_APP_ID=${kintone-app-id}`{{copy}}

**${kintone-app-api-id} 部分は、ご自分のkintone 環境に合わせて変更してください**

例

```bash
heroku config:set KINTONE_APP_ID=99
```


## 2-3. LINE との連携設定

### 2-3-A. LINE Bot のChannel Secret

`heroku config:set LINE_BOT_CHANNEL_SECRET=${bot-channel-secret}`{{copy}}

**${bot-channel-secret} 部分は、ご自分の環境に合わせて変更してください**

例

```bash
heroku config:set LINE_BOT_CHANNEL_SECRET=xxxxxxxxxxxxxxxxxxxx
```

### 2-3-B. LINE Bot のChannel Access Token

`heroku config:set LINE_BOT_CHANNEL_SECRET=${bot-channel-access-token}`{{copy}}

**${bot-channel-access-token} 部分は、ご自分の環境に合わせて変更してください**

例

```bash
heroku config:set LINE_BOT_CHANNEL_ACCESS_TOKEN=xxxxxxxxxxxxxxxxxxxx
```

### 2-3-C. LIFF ID

LIFF URLの最後の/(スラッシュ)以降が、LIFFのIDです。

例

- LIFF URL
    - https://liff.line.me/`1234567890-XXXXXXXX`
- LIFF ID
    - `1234567890-XXXXXXXX`

`heroku config:set LIFF_ID=${liff-id}`{{copy}}

**${liff-id} 部分は、ご自分の環境に合わせて変更してください**

例

```bash
heroku config:set LIFF_ID=1234567890-XXXXXXXX
```


## 2-4. アプリ環境変数の確認

下記のコマンドを実行して、設定した値が表示されていればOKです

`heroku config`{{copy}}

実行例

```bash
API_URL:                       https://ldc-20200511-xxxxxx.herokuapp.com/
HOST:                          0.0.0.0
KINTONE_APP_API_TOKEN:         XXXXXXXXXXXXXXXX
KINTONE_APP_DOMAIN:            xxxxxx.cybozu.com
KINTONE_APP_ID:                99
LIFF_ID:                       1234567890-XXXXXXXX
LINE_BOT_CHANNEL_ACCESS_TOKEN: XXXXXXXXXXXXXXXXXXXXXX
LINE_BOT_CHANNEL_SECRET:       XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
NODE_ENV:                      production
NPM_CONFIG_PRODUCTION:         false
SKIP_LOGIN                     false
USE_VCONSOLE:                  true
```

### お疲れ様でした
### 次のStep では、LIFF アプリをheroku にデプロイします
