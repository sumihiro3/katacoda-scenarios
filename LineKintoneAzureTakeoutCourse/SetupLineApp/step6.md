# テイクアウトアプリを動かす

いよいよアプリを動かしましょう！


## 6-1. デプロイ結果を確認する

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
remote:        https://ldc-20200609-${your_name}.herokuapp.com/ deployed to Heroku
remote:
remote: Verifying deploy... done.
To https://git.heroku.com/ldc-20200609-${your_name}.git
   xxxxxxx..xxxxxxx  master -> master
$
```

下記のコマンドを実行しておくと、ログが表示されます。

`heroku logs --tail`{{execute}}


## 6-2. テイクアウトアプリを動かす

デプロイされたLIFF アプリは、LINE アプリ内ブラウザだけでなく、PC やスマートフォンなどの外部ブラウザ（Chrome, Safari など）でも実行できます。

LIFF v2 より外部ブラウザでも実行できるようになりました。つまり、LIFF アプリが通常のWeb アプリと同じ様に様々な場面で利用できることになったということです。

### 6-2-A. LINE アプリ内ブラウザでLIFF アプリを動かす

スマートフォンのLINE アプリを開き、友だち追加したBot アカウントのトーク画面を開いてください。

画面に表示されたリッチメニューをタップすると注文や決済などが行なえます。

### これでアプリのデプロイと実行は完了です。お疲れ様でした！！
