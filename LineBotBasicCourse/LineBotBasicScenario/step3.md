# クイズBot の設定および実行

Step3 ではクイズを出題してくれるクイズBot を設定し、LINE アプリで使えるようにします。

## クイズを出題するBot

- 3択問題を出題（全5問）
- 回答が正解かどうかを判定する
- 全問回答したら点数とコメントを返す

*※本Bot で出題するクイズ問題は「[雑学しかじか](https://pedant19.com/)」より引用しています*

## FlexMessage
クイズBot ではレイアウトを自由にカスタマイズできるメッセージである **[FlexMessage](https://developers.line.biz/ja/docs/messaging-api/using-flex-messages/)** を利用しています。

![FlexMessage](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/FlexMessage.png)

- CSS のように画像やボタンなど複数の要素を組み合わせたメッセージを利用できる
- [FlexMessage Simulator](https://developers.line.biz/console/fx/)で表示を確認しながら開発できる

![FlexMessage Simulator](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/FlexMessageSimulator.png)


## 3-1. リッチメニューを作成する
[LINE 公式アカウントマネージャー](https://manager.line.biz/)にアクセス＆ログインし、作成したチャネルを選択する

![LINE 公式アカウントマネージャー](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/AccountManagerSelectChannel.png)

メニューから「リッチメニュー」を選択する

![リッチメニュー](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/AccountManagerRichMenu_01.png)

「リッチメニュー」を新規作成する

![リッチメニュー](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/AccountManagerRichMenu_02.png)

タイトルと表示期間を入力する

- 今日の日付が表示期間に含まれるよう設定する
    - 時間の欄が空だとリッチメニューを登録できないので注意

![リッチメニュー](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/AccountManagerRichMenu_03.png)

テンプレートを選択する

![リッチメニュー](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/AccountManagerRichMenu_04.png)


アクションのタイプを選択し、リッチメニュー押下時に送信されるテキストを入力する

- 入力したテキストがTextMessage として送信される

|  項目  |  値  |
| :-- | :-- |
|  タイプ  |  テキスト  |
|  テキスト  |  クイズ開始  |

![リッチメニュー](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/AccountManagerRichMenu_05.png)

背景画像をアップロードする

- [リッチメニュー背景画像](https://raw.githubusercontent.com/sumihiro3/line-bot-hands-on-vol1/master/static/quiz_rich_menu.png) をローカルにダウンロードし、LINE 公式アカウントマネージャーにアップロードする

![リッチメニュー](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/AccountManagerRichMenu_06.png)

設定を保存する

![リッチメニュー](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/AccountManagerRichMenu_07.png)

設定したリッチメニューが表示されていればOK！

![リッチメニュー](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/AccountManagerRichMenu_08.png)

## 3-2. プログラム実行
設定変更が完了完了したら、下記コマンドをTerminal で実行する

`node app.js`{{execute}}


## 3-3. クイズBot を使ってみる
リッチメニューをタップしてクイズを始めてみましょう

![クイズBot](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/QuizBot.png)

### お疲れ様でした!
### これでBot 編のハンズオンは終了です！
