# テイクアウトアプリの実行設定

次にテイクアウトアプリ自体の実行設定を設定ファイルに記載していきます。

設定ファイルを編集するためにIDE を使います。


## 3-1. Katacoda でエディター（VSCode）を表示させる

Katacoda 画面のIDE タブを選択してエディター（VSCode）を表示してください。
少し時間がかかる場合があります。

![エディター（VSCode）を表示させる](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineKintoneAzureTakeoutCourse/SetupLineApp/images/KatacodaIDETab.png)


## 3-2. 設定ファイル（.env ファイル）を作成する

まずは、下記のコマンドをTerminal で実行して設定項目を記載するファイルを作成してください。
（コマンド部分をクリックすると実行できます）

`cp ./.env.example ./.env`{{execute}}

## 3-3. 設定ファイル（.env ファイル）を

IDE に戻ってapp フォルダにある `.env` ファイルをクリックして開く

![envファイル](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineKintoneAzureTakeoutCourse/SetupLineApp/images/OpenDotEnv.png)

![envファイル](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineKintoneAzureTakeoutCourse/SetupLineApp/images/ModifyDotEnv.png)


## 3-4. テイクアウトアプリの実行設定を設定ファイルに記載する

設定ファイルは `項目名=項目値` というルールで記載します。
項目名は変更せず、項目値部分にある `XXXXX` などのダミー値を置き換えてください。


### 3-4-A. アプリ画面にデバッグ用コンソール（vConsole）を表示させる設定

`USE_VCONSOLE=true`

*`vConsole` は、スマートフォンなどのブラウザでも開発者ツール（ログ、通信 など）が閲覧できるツールです*


## 3-5. LINE との連携設定

### 3-5-A. LINE Bot のChannel Secret

`LINE_BOT_CHANNEL_SECRET=${bot-channel-secret}`

**${bot-channel-secret} 部分は、ご自分の環境に合わせて変更してください**

例

```bash
LINE_BOT_CHANNEL_SECRET=xxxxxxxxxxxxxxxxxxxx
```

### 3-5-B. LINE Bot のChannel Access Token

`LINE_BOT_CHANNEL_ACCESS_TOKEN=${bot-channel-access-token}`

**${bot-channel-access-token} 部分は、ご自分の環境に合わせて変更してください**

例

```bash
LINE_BOT_CHANNEL_ACCESS_TOKEN=xxxxxxxxxxxxxxxxxxxx
```

### 3-5-C. リッチメニューID

先に設定したデフォルトリッチメニューID を設定します。

`LINE_RICH_MENU_DEFAULT_ID=${line-rich-menu-id}`

**${line-rich-menu-id} 部分は、ご自分の環境に合わせて変更してください**

例

```bash
LINE_RICH_MENU_DEFAULT_ID=richmenu-xxxxxxxxxxxxxxxxxxxx
```

### 3-5-D. LIFF ID

LIFF URLの最後の/(スラッシュ)以降が、LIFFのIDです。

例

- LIFF URL
    - https://liff.line.me/`1234567890-XXXXXXXX`
- LIFF ID
    - `1234567890-XXXXXXXX`

`LIFF_ID=${liff-id}`

**${liff-id} 部分は、ご自分の環境に合わせて変更してください**

例

```
LIFF_ID=1234567890-XXXXXXXX
```

## 3-6. LINE Pay の設定

LINE Pay は別途お知らせする設定項目を下記の手順に沿って記載してください。

### 3-6-A. LINE Pay のChannel ID

`LINE_PAY_CHANNEL_ID=${pay-channel-id}`

**${pay-channel-id} 部分は、別途お知らせする値に変更してください**

例

```bash
LINE_PAY_CHANNEL_ID=xxxxxxxxxxxxxxxxxxxx
```

### 3-6-B. LINE Bot のChannel Secret

`LINE_PAY_CHANNEL_SECRET=${pay-channel-secret}`

**${pay-channel-secret} 部分は、別途お知らせする値に変更してください**

例

```bash
LINE_PAY_CHANNEL_SECRET=xxxxxxxxxxxxxxxxxxxx
```


## 3-7. kintone アプリとの連携設定

### 3-7-A. アプリのドメイン

`KINTONE_DOMAIN_NAME=${kintone-domain-name}`

**${kintone-domain-name} 部分は、ご自分のkintone 環境に合わせて変更してください**

例

```bash
KINTONE_DOMAIN_NAME=dev-foobar.cybozu.com
```

### 3-7-B. kintone ログインユーザーID

kintone 管理画面にログインする際に使用するユーザーID を設定します。

`KINTONE_USER_ID=${kintone-user-id}`

**${kintone-user-id} 部分は、ご自分のkintone 環境に合わせて変更してください**

例

```bash
KINTONE_USER_ID=foo-user
```

### 3-7-C. kintone ログインパスワード

kintone 管理画面にログインする際に使用するパスワード を設定します。

`KINTONE_USER_PASSWORD=${kintone-user-password}`

**${kintone-user-password} 部分は、ご自分のkintone 環境に合わせて変更してください**

例

```bash
KINTONE_USER_PASSWORD=some-password
```

### 3-7-D. 顧客管理アプリID

顧客管理アプリのIDを設定します。

`KINTONE_FOLLOWED_USER_APP_ID=${kintone-followed-user-app-id}`

**${kintone-followed-user-app-id} 部分は、ご自分のkintone 環境に合わせて変更してください**

例

```bash
KINTONE_FOLLOWED_USER_APP_ID=10
```

### 3-7-E. 注文管理アプリID

注文管理アプリのIDを設定します。

`KINTONE_ORDER_ITEM_APP_ID=${kintone-order-item-app-id}`

**${kintone-order-item-app-id} 部分は、ご自分のkintone 環境に合わせて変更してください**

例

```bash
KINTONE_ORDER_ITEM_APP_ID=11
```

### 3-7-F. 決済管理アプリID

決済管理アプリのIDを設定します。

`KINTONE_TRANSACTION_APP_ID=${kintone-transaction-app-id}`

**${kintone-transaction-app-id} 部分は、ご自分のkintone 環境に合わせて変更してください**

例

```bash
KINTONE_TRANSACTION_APP_ID=11
```

### 3-7-G. 問い合わせ管理アプリID

問い合わせ管理アプリのIDを設定します。

`KINTONE_INQUIRY_APP_ID=${kintone-inquiry-app-id}`

**${kintone-inquiry-app-id} 部分は、ご自分のkintone 環境に合わせて変更してください**

例

```bash
KINTONE_INQUIRY_APP_ID=11
```


## 3-8. Microsoft Azure との連携設定

### 3-8-A. Azure の利用設定

テイクアウトアプリでAzure を利用するかを設定します。
Azure を利用できる方は `true` を設定してください。

`USE_AZURE_AI=true`


### 3-8-B. Azure のエンドポイントURL

`AZURE_TEXT_ANALYTICS_URL=${azure-text-analytics-url}`

**${azure-text-analytics-url} 部分は、ご自分のAzure 環境に合わせて変更してください**

例

```bash
AZURE_TEXT_ANALYTICS_URL=https://foo-bar.cognitiveservices.azure.com/
```

### 3-8-C. Azure テキスト解析API KEY

`AZURE_TEXT_ANALYTICS_KEY=${azure-text-analytics-key}`

**${azure-text-analytics-key} 部分は、ご自分のAzure 環境に合わせて変更してください**

例

```bash
AZURE_TEXT_ANALYTICS_KEY=XXXXXXXXXXXXXXX
```

### 3-8-D. Azure テキスト翻訳API KEY

`AZURE_TRANSLATOR_KEY=${azure-translator-key}`

**${azure-translator-key} 部分は、ご自分のAzure 環境に合わせて変更してください**

例

```bash
AZURE_TRANSLATOR_KEY=XXXXXXXXXXXXXXX
```

## 3-9. アプリ環境変数をheroku へ設定する

`.env` ファイルにすべての設定値を記載できたら、下記のコマンドを実行して heroku へ設定します。

`sh ./set-configs-to-heroku.sh`{{execute}}


## 3-10. アプリ環境変数の確認

下記のコマンドを実行して、設定した値が表示されていればOKです

`heroku config`{{execute}}

実行例

```bash
API_URL:                       https://ldc-20200609-foo-bar.herokuapp.com
AZURE_TEXT_ANALYTICS_KEY:      XXXXXXXXXXXXXXXXXX
AZURE_TEXT_ANALYTICS_URL:      https://xxxxx.cognitiveservices.azure.com/
AZURE_TRANSLATOR_KEY:          XXXXXXXXXXXXXxxx
HOST:                          0.0.0.0
KINTONE_DOMAIN_NAME:           xxxxx.cybozu.com
KINTONE_FOLLOWED_USER_APP_ID:  xx
KINTONE_INQUIRY_APP_ID:        xx
KINTONE_ORDER_ITEM_APP_ID:     xx
KINTONE_TRANSACTION_APP_ID:    xx
KINTONE_USER_ID:               xxxx
KINTONE_USER_PASSWORD:         xxxxxx
LIFF_ID:                       1234567890-XXXXXXXXXX
LINE_BOT_CHANNEL_ACCESS_TOKEN: XXXXXXXXXXXXXXXXXXXXXXXXXX
LINE_BOT_CHANNEL_SECRET:       xxxxxxxxxxxxx
LINE_PAY_CHANNEL_ID:           xxxxxxxxxxx
LINE_PAY_CHANNEL_SECRET:       xxxxxxxxxxxxxxxx
LINE_RICH_MENU_DEFAULT_ID:     richmenu-xxxxxxxxxxxxxxxx
NODE_ENV:                      production
NPM_CONFIG_PRODUCTION:         false
USE_AZURE_AI:                  true
USE_VCONSOLE:                  true
```

### お疲れ様でした
### 次のStep では、テイクアウトアプリをheroku にデプロイします
