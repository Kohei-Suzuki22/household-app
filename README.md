household-app(家計簿アプリ)
====
https://household-app.herokuapp.com/



## Overview
買ったものを登録して、合計支出をもとめることができます。

#### ホーム画面[1]
![ホーム画面](https://user-images.githubusercontent.com/47558898/58498856-e86e8200-81b9-11e9-8d4f-0ae0560277d3.PNG)


## Description
アカウントを作成し、予算、買ったものなどを登録することで、予算-支出の計算が行われるようになっています。また、登録された買ったものは、カテゴリーごとに検索し、そのカテゴリーの合計支出を求めることなどもできます。
ログインページからゲストとしてログインできます。機能を確認したい方はゲストユーザを使ってみてください。*(ゲストユーザを使用して登録したデータはログアウト後に削除されます。)

## How to use

#### ゲストとしてログイン
ログインページからゲストとしてログインすることが出来ます。新規登録しなくても機能を確認できるのでお試しください。

#### 予算入力
ログイン後はまず、ナビゲーションバーの「user」 → 「予算を記入、ユーザの編集」から予算を入力しましょう!
![予算入力](https://user-images.githubusercontent.com/47558898/58498485-1a331900-81b9-11e9-9e9d-123da1d24cf6.PNG)


#### 商品リスト
「家計簿をつける」 → 「データを登録」を完了すると、商品リストが表示され、支出合計が見られるようになります。
![商品リスト](https://user-images.githubusercontent.com/47558898/58494479-249ce500-81b0-11e9-935e-5d6be1fe9c32.PNG)

#### カテゴリーで検索
商品リストのカテゴリーで絞るから調べたいものを検索すると、一致したものが存在する場合、そのリストを表示します。
![カテゴリーで検索](https://user-images.githubusercontent.com/47558898/58494556-501fcf80-81b0-11e9-8bcd-315298aafd3d.PNG)

#### 予算 － 支出 を計算 
ナビゲーションバーのタイトル(household-app)をクリックすることで、ホーム画面に戻ることができます。登録されているデータから、予算 － 支出(すべての合計支出) の結果が現れます。
![予算 － 支出](https://user-images.githubusercontent.com/47558898/58494577-5ca42800-81b0-11e9-9466-726affe63255.PNG)


## Used language 
- Ruby 2.6.0 
- Ruby on Rails 5.2.3
- bootstrap3 

## Licence
This software is released under the MIT License, see LICENSE.


