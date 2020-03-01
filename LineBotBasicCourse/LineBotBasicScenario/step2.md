# Bot の設定＆オウム返しBot を実行する

Step2 ではプログラム側にBot チャネルの設定を行い、オウム返しBot がLINE アプリで使えるようにします。


## 2-1. Katacoda でエディター（VSCode）を表示させる

Katacoda 画面のIDE タブを選択してエディター（VSCode）を表示する

![エディター（VSCode）を表示させる](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/KatacodaIDETab.png)

エディターの全画面表示や、別タブでの表示も可能
![エディター（VSCode）を表示させる](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/KatacodaIDETabOpened.png)


## 2-2. envファイルを更新する

exampleフォルダにある `.env` ファイルをクリックして開く

![envファイル](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/OpenDotEnv.png)

`.env` ファイルの内容を更新して保存する

![envファイル](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/ModifyDotEnv.png)

|  項目名  |  値  |
| :-- | :-- |
|  CHANNEL_ACCESS_TOKEN  |  （1-7. でメモしたチャネルアクセストークン）  |
|  CHANNEL_SECRET  |  （1-4. でメモしたチャネルシークレット）  |
|  BASE_URL  |  `https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com`{{copy}}  |


## 2-3. プログラム実行
設定変更が完了完了したら、下記コマンドをTerminal で実行する

`node index.js`{{execute}}


## 2-4. オウム返しBot を使ってみる
LINE アプリで先ほど友だち登録したBot アカウントのトーク画面を開いて、オウム返しBot を使ってみましょう。
テキストや画像、スタンプなどのメッセージを送信し、そのまま返信されるか試してみましょう。

*注意：スタンプはLINE 公式スタンプのみ返ってきます*

![オウム返しBot](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/ParrotSpeakBot.png)

試し終わったら、Terminal で`Ctrl + C` を押下してプログラムを中断してください。


### お疲れ様でした
### 次のStep ではクイズBot の設定を行って動かします
