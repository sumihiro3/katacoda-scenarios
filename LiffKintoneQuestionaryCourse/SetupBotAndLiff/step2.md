
# LIFF 用チャネルの作成・設定

Step2 ではLINE の設定画面でLIFF アプリを利用するためのチャネルの作成や設定を行います。


## 2-1. LINE Developers にログイン

[LINE Developers](https://developers.line.biz/ja/) にアクセスしてログイン
![LINE Developers](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/LINEDevelopers.png)


## 2-2. プロバイダーを選択

任意のプロバイダーを選択
![プロバイダー選択](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/ProviderList.png)


## 2-3. LIFF 用のチャネルを作成

チャネルを作成
![チャネル作成](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/NewChannel.png)

「LINE ログイン」 を選択
![LINE ログイン](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LiffKintoneQuestionaryCourse/SetupBotAndLiff/images/SelectLineLogin.png)

チャネル情報を入力して、「入力内容を確認する」ボタンを押下する

### チャネル情報の入力例

|  項目名  |  値  |
| :-- | :-- |
|  アプリ名  |  アンケートLIFFアプリ（ログイン）  |
|  アプリ説明  |  LINE × kintoneでアンケートシステムを作ってみよう！  |
|  アプリタイプ  |  ウェブアプリ  |
|  メールアドレス  |  （ご自分のメールアドレス）  |
|  プライバシーポリシーURL  |  （入力不要）  |
|  サービス利用規約URL  |  （入力不要）  |


![チャネルの情報を入力](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LiffKintoneQuestionaryCourse/SetupBotAndLiff/images/InputLoginChannelSetting.png)

規約に同意してチャネルを作成する

![規約に同意](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LiffKintoneQuestionaryCourse/SetupBotAndLiff/images/AgreeTerms.png)

## 2-4. LIFF アプリを追加する

「LIFF」タブを選択して、LIFF アプリを追加する

![LIFF アプリを追加](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LiffKintoneQuestionaryCourse/SetupBotAndLiff/images/AddLiffApp.png)

|  項目名  |  値  |
| :-- | :-- |
|  LIFFアプリ名  |  アンケート  |
|  サイズ  |  Full  |
|  エンドポイントURL（この時点ではダミー）  |  https://www.google.com  |
|  Scope  |  profile, openid, chat_message.write  |
|  ボットリンク機能  |  On (Aggressive)  |

![基本情報を入力](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LiffKintoneQuestionaryCourse/SetupBotAndLiff/images/InputLiffAppSettings.png)


LIFF アプリが追加されたことを確認する

![LIFFアプリ追加](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LiffKintoneQuestionaryCourse/SetupBotAndLiff/images/LiffAppCreated.png)


「LIFF URL」を控えておく

![LIFF URL](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LiffKintoneQuestionaryCourse/SetupBotAndLiff/images/CopyLiffUrl.png)


## 2-5. LINE ログインチャネルを公開する

画面上部の「非公開」をチェックして公開する

![公開する](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LiffKintoneQuestionaryCourse/SetupBotAndLiff/images/PublishChannel.png)

「公開済み」となっていればOK

![公開済み](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LiffKintoneQuestionaryCourse/SetupBotAndLiff/images/ChannelPublished.png)


## 2-6. シェアターゲットピッカーを有効にする

![シェアターゲットピッカー](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LiffKintoneQuestionaryCourse/SetupBotAndLiff/images/EnableShareTargetPicker_01.png)

![シェアターゲットピッカー](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LiffKintoneQuestionaryCourse/SetupBotAndLiff/images/EnableShareTargetPicker_02.png)



### お疲れ様でした
### 次は、いよいよアプリを公開します
