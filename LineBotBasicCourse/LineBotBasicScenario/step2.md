# 2 Bot の設定＆オウム返しBot を実行する

## 2-1. Katacoda でエディター（VSCode）を表示させる

Katacoda 画面のIDE タブを選択してエディター（VSCode）を表示させる

![エディター（VSCode）を表示させる](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/KatacodaIDETab.png)

エディターの全画面表示や、別タブでの表示も可能
![エディター（VSCode）を表示させる](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/KatacodaIDETabOpened.png)


## 2-2. envファイルを更新する

### exampleフォルダにある `.env` ファイルをクリックして開く

![envファイル](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/OpenDotEnv.png)

### `.env` ファイルの内容を更新して保存する

![envファイル](https://raw.githubusercontent.com/sumihiro3/katacoda-scenarios/master/LineBotBasicCourse/LineBotBasicScenario/images/ModifyDotEnv.png)

|  項目名  |  値  |
| :-- | :-- |
|  CHANNEL_ACCESS_TOKEN  |  （1-7. でメモしたチャネルアクセストークン）  |
|  CHANNEL_SECRET  |  （1-4. でメモしたチャネルシークレット）  |
|  BASE_URL  |  `https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com`{{copy}}  |


## 2-3. プログラム実行
設定変更が完了完了したら、下記コマンドをTerminal で実行する

`node index.js`{{execute}}

