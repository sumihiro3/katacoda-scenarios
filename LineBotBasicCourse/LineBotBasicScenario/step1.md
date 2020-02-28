
# Bot チャネルの作成・設定

Step1 ではLINE 側の設定画面でBot を利用するためのチャネルの作成や設定を行います。


## 1-1. LINE Developers にログイン

[LINE Developers](https://developers.line.biz/ja/) にアクセスしてログイン
![LINE Developers](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/LINEDevelopers.png)


## 1-2. プロバイダーを選択

任意のプロバイダーを選択
![プロバイダー選択](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/ProviderList.png)


プロバイダー未作成の人は画面上の「作成」ボタンを押下して新規作成してください。

- *任意の「プロバイダー名」を入力して作成*
    - *LINE* という文字列は含められません


## 1-3. チャネルを新規作成

Botのチャネルを作成
![チャネル作成](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/NewChannel.png)

「Messaging API」 を選択
![Messaging API](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/SelectMessagingAPI.png)

チャネル情報を入力して、「入力内容を確認する」ボタンを押下する

### チャネル情報の入力例

|  項目名  |  値  |
| :-- | :-- |
|  アプリ名  |  ハンズオンクイズ  |
|  アプリ説明  |  LDGK LINE Bot ハンズオンで作るクイズBot  |
|  大業種  |  個人  |
|  小業種  |  個人（その他）  |
|  メールアドレス  |  （ご自分のメールアドレス）  |
|  プライバシーポリシーURL  |  （入力不要）  |
|  サービス利用規約URL  |  （入力不要）  |


![チャネルの情報を入力](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/InputChannelSetting.png)

各種規約に同意してチャネルを作成する

![各種規約に同意](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/AgreeTerms.png)

情報利用に関する事項に同意する

![情報利用に関する事項に同意する](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/AgreeTerms02.png)


## 1-4. チャネルシークレット をメモしておく

チャネル基本情報画面に表示されているチャネルシークレット をメモしておく

![CopyChannelSecret](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/CopyChannelSecret_01.png)

![CopyChannelSecret](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/CopyChannelSecret_02.png)


## 1-5. Webhook 設定

「Messaging API設定」タブ内にある、Webhook URL の「編集」ボタンを押下してWebhook URL を入力可能状態にする

![Webhook](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/WebhookSetting_01.png)

![Webhook](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/WebhookSetting_02.png)


Webhook URL に下記のURLを入力して、「Webhookの利用」を有効にする

![Webhook URL](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/WebhookURL.png)

- `https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/linebot`{{copy}}<br>
このURL をコピペする

![Webhook URL](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/WebhookURL_02.png)
「Webhookの利用」を有効にする


## 1-6. 応答設定

LINE公式アカウント機能 の画面右側にある「編集」リンクを押下して、公式アカウントマネージャー画面を開く

![公式アカウントマネージャー画面](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/MessageSetting01.png)

応答設定画面を開く

公式アカウントマネージャー画面左の「応答設定」を選択して応答設定画面を開く

![応答設定](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/MessageSetting02.png)

応答設定を下記のように設定する

|  項目名  |  値  |
| :-- | :-- |
|  応答モード  |  Bot  |
|  あいさつメッセージ  |  オン  |
|  応答メッセージ  |  オフ  |
|  Webhook  |  オン  |

![応答設定](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/MessageSetting03.png)


## 1-7. チャネルアクセストークン を発行してメモしておく

チャネルアクセストークンの「発行」ボタンを押下して発行し、メモしておく

![GenerateToken](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/GenerateToken_01.png)

![GenerateToken](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/GenerateToken_02.png)


## 1-8. 作成したBotのチャネルを友だち登録する

LINE Bot へのQR コードをLINEアプリで読み込んで友だち登録する

![BotQRCode](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/BotQRCode.png)

*LINE Bot へのQR コードは、LINE Developers の「Messaging API 設定」タブ内上部にあります*

### お疲れ様でした
### 次のStep ではプログラム側の設定を行い、オウム返しBot を動かします
