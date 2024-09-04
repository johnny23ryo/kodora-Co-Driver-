
## サービス名: コドラ

<img src="https://img.shields.io/badge/-RubyonRails-CC0000.svg?logo=rubyonrails&style=popout"> <img src="https://img.shields.io/badge/-Ruby-CC342D.svg?logo=ruby&style=popout"> <img src="https://img.shields.io/badge/-Javascript-F7DF1E.svg?logo=javascript&style=popout">
 <img src="https://img.shields.io/badge/-Docker-1488C6.svg?logo=docker&style=popout"> <img src="https://img.shields.io/badge/-Postgresql-336791.svg?logo=postgresql&style=popout"> <img src="https://img.shields.io/badge/-Amazon-FF9900.svg?logo=amazon&style=popout">


## サービス概要

「コドラ」は、ドライブをより楽しむためのサポートアプリです。ユーザーが休憩ポイントや観光スポット、レストランなどを簡単に見つけられるようにし、ドライブ先でのイベント情報を提供します。

## このサービスへの思い・作りたい理由
ドライブに行った際、目的地は決めているものの、途中で立ち寄りたい休憩場所や観光スポット、美味しいレストランを見つけるのは簡単ではありません。また、地元のイベント情報が分散しているため、一箇所で確認するのが難しいことも課題です。コドラは、こうした課題を解決し、ドライブをより楽しく、便利にするために作成しました。

## ユーザー層について
・長距離ドライブを楽しむ人々
 ・旅行好きなカップルや家族
 ・新しい場所を探索するのが好きな人

## サービスの利用イメージ
ユーザーが目的地を設定し、ルートを検索
最適なルートが提案され、途中のおすすめスポットやイベント情報が表示
気に入ったルートを保存し、次回のドライブに活用
地元のイベントや観光スポットの情報を投稿し、他のユーザーと共有

## ユーザーの獲得について
X(旧:Twitter)でのシェア機能を追加し利用を促す。

## サービスの差別化ポイント・推しポイント
地元のイベントや季節のお祭りなど、Google Mapsではカバーされていないローカルなアクティビティ情報をユーザーに投稿してもらい、ドライブ意欲を高めます。

## 機能紹介

|トップ画面| ログイン画面 |
|:-:|:-:|
[![Image from Gyazo](https://i.gyazo.com/17b0809d81d3d56ce80f5af3d63e140c.gif)](https://gyazo.com/17b0809d81d3d56ce80f5af3d63e140c)| [![Image from Gyazo](https://i.gyazo.com/313adb4e2f7aa50a63fa8367680b2e17.gif)](https://gyazo.com/313adb4e2f7aa50a63fa8367680b2e17)　　　　　　　　
|4つのメイン機能が一目でわかるようにし、すぐに機能がを使えるような動線にしました。|グーグルログインを用意しました。できるだけログインしなくとも利用できるようにしており、道の駅スタンプラリー機能、新規投稿機能以外は全てログインせずに使用できます。|

|おすすめのスポット一覧| おすすめのレストラン、休憩所、食事処検索 |
|:-:|:-:|
写真----------------------------- | 写真-----------
|おすすめのスポット一覧ボタンをhoverすると3つの機能が表示されるようにしました。|検索したい住所を入力して検索ボタンをクリックするとおすすめのスポットとスポットの魅力的な説明文を提示します。|

|ルート検索| 道の駅スタンプラリー機能|
|:-:|:-:|
写真----------------------------- | 写真-----------
|目的地を入力すると、現在地から目的地までの所要時間や経路を表示します。|ユーザーが道の駅を訪れたことをアプリに伝えていただくとスタンプを付与します。|

|イベント一覧|イベント詳細 |
|:-:|:-:|
写真----------------------------- | 写真-----------
|投稿されたイベントがグーグルマップ上にピンで表示されており、一目で自分が行きたいイベントが分かるようになっています。|イベントの開催期間などの詳細情報を掲示しています。|

|イベント作成|イベントピックアップ機能|
|:-:|:-:|
写真----------------------------- | 写真-----------
|ローカルやマイナーなイベントの情報を収集するためにユーザー投稿形式にしています。|ランダムで投稿を3つ表示させています。|



 | アプリ機能1 | アプリ機能1 |
|:-----------:|:------------:|
| [![Image from Gyazo](https://i.gyazo.com/17b0809d81d3d56ce80f5af3d63e140c.gif)](https://gyazo.com/17b0809d81d3d56ce80f5af3d63e140c) | GyazoのマークダウンGIF |
| アプリ機能の説明が入ります。アプリ機能の説明が入ります。 | アプリ機能の説明が入ります。アプリ機能の説明が入ります。 |

</br>

## 技術構成
### 使用技術
|カテゴリ|技術|
|:-------------|:------------|
|フロントエンド|JavaScript / TailwindCSS |
|バックエンド|Ruby 3.2.2 / Rails 7.0.8|
|データベース|PostgreSQL|
|環境構築|Docker|
|インフラ|Render / Amazon S3 |
|Web API| Open AI API(GPT-4o) / Google Maps JavaScript API / Google Places API / Google Geolocation API / Google Sign-In |
	
	
## 画面遷移図
[画面遷移図](https://www.figma.com/design/t6d8lv9hHXj49bZN5oKT8D/runteq%E5%8D%92%E6%A5%AD%E5%88%B6%E4%BD%9C?node-id=0-1&t=0ZLOjcjA4HG9lWPC-0)

## ER図
[![Image from Gyazo](https://i.gyazo.com/6c2cc87673b073e39b4edb190a620a99.png)](https://gyazo.com/6c2cc87673b073e39b4edb190a620a99)
