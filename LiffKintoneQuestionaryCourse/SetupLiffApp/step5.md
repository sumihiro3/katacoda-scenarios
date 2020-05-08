# LIFF アプリを動かす

いよいよアプリを動かしましょう！


## 5-1. デプロイ結果を確認する

以下のようにエラーが表示されていなければ無事にデプロイされています。

エラーが表示されている場合は、エラーメッセージを確認してください。

```bash
（前略）
remote: -----> Build succeeded!
remote:  !     Unmet dependencies don't fail yarn install but may cause runtime issues
remote:        https://github.com/npm/npm/issues/7494
remote:
remote: -----> Discovering process types
remote:        Procfile declares types     -> (none)
remote:        Default types for buildpack -> web
remote:
remote: -----> Compressing...
remote:        Done: 58.3M
remote: -----> Launching...
remote:        Released v18
remote:        https://ldc-20200511-${your_name}.herokuapp.com/ deployed to Heroku
remote:
remote: Verifying deploy... done.
To https://git.heroku.com/ldc-20200511-${your_name}.git
   xxxxxxx..xxxxxxx  master -> master
$
```

下記のコマンドを実行しておくと、ログが表示されます。

`heroku logs --tail`{{copy}}


## 5-2. LIFF アプリを動かす

デプロイされたLIFF アプリは、LINE アプリ内ブラウザだけでなく、PC やスマートフォンなどの外部ブラウザ（Chrome, Safari など）でも実行できます。

LIFF v2 より外部ブラウザでも実行できるようになりました。つまり、LIFF アプリが通常のWeb アプリと同じ様に様々な場面で利用できることになったということです。

### 5-2-A. 外部ブラウザでLIFF アプリを動かす

ブラウザ（Chrome やSafari）で、アプリのURL にアクセスしてください。

```bash
https://ldc-20200511-${your_name}.herokuapp.com/ 
```

LIFF アプリでのアクセス許可を行う画面が表示される（初回のみ）ので、「許可する」ボタンを押下してください。

![Webhook URL](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LiffKintoneQuestionaryCourse/SetupBotAndLiff/images/AcceptLiff.png)

次に友だち追加画面が表示されます。

先程のBot リンク設定したBot を友だち追加できるようになります。「友だち追加」ボタンを押下してください。

![Webhook URL](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LiffKintoneQuestionaryCourse/SetupBotAndLiff/images/AddFriend.png)

LINE アカントでログインをすると、アンケート画面が表示されますので質問に回答しましょう。

![Webhook URL](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LiffKintoneQuestionaryCourse/SetupBotAndLiff/images/TopPage.png)

回答した内容が、kintone に連携されていれば成功です！

![kintone](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LiffKintoneQuestionaryCourse/SetupBotAndLiff/images/kintone.png)

「Share」ボタンを押下すると、友だちへメッセージを送信してシェアすることもできます。

![kintone](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LiffKintoneQuestionaryCourse/SetupBotAndLiff/images/Share.png)

### 5-2-B. LINE アプリ内ブラウザでLIFF アプリを動かす

スマートフォンのLINE アプリを開き、Bot リンクで友だち追加したBot アカウントのトーク画面を開いてください。

友だち追加時にメッセージが送られています。メッセージの「アンケートに回答する」ボタンを押下すると、外部ブラウザと同様にアンケート画面が表示されます。

![Bot](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LiffKintoneQuestionaryCourse/SetupBotAndLiff/images/BotTalkPage.png)

### これでハンズオンは完了です。お疲れ様でした！！
