
## サービス名: コドラ


 <a href="https://gyazo.com/a91e7875b7f0dd239688477f8a063735"><img src="https://i.gyazo.com/a91e7875b7f0dd239688477f8a063735.jpg" alt="Image from Gyazo" width="475"/></a>


<img src="https://img.shields.io/badge/-RubyonRails-CC0000.svg?logo=rubyonrails&style=popout"> <img src="https://img.shields.io/badge/-Ruby-CC342D.svg?logo=ruby&style=popout"> <img src="https://img.shields.io/badge/-Javascript-F7DF1E.svg?logo=javascript&style=popout">
 <img src="https://img.shields.io/badge/-Docker-1488C6.svg?logo=docker&style=popout"> <img src="https://img.shields.io/badge/-Postgresql-336791.svg?logo=postgresql&style=popout"> <img src="https://img.shields.io/badge/-Amazon-FF9900.svg?logo=amazon&style=popout">


## サービス概要

コドラは、長距離ドライブをより快適で楽しいものにするために開発したドライブサポートアプリです。私は長距離ドライブが趣味で、その経験から「こういった機能があればさらにドライブが充実する」と感じたアイデアをもとに、いくつかの機能を実装しました。具体的には、おすすめのスポット検索機能、ルート検索機能、イベント一覧機能、そして道の駅スタンプラリー機能があります。これらの機能により、ユーザーは最適なドライブルートを見つけたり、興味のあるスポットやイベント情報を簡単に取得でき、道の駅を訪れる楽しみも加わります。

## このサービスへの思い・作りたい理由
ドライブに行った際、目的地は決めているものの、途中で立ち寄りたい休憩場所や観光スポット、美味しいレストランを見つけるのは簡単ではありません。また、地元のイベント情報が分散しているため、一箇所で確認するのが難しいことも課題です。コドラは、こうした課題を解決し、ドライブをより楽しく、便利にするために作成しました。


## サービスの差別化ポイント・推しポイント
地元のイベントや季節のお祭りなど、Google Mapsではカバーされていないローカルなアクティビティ情報をユーザーに投稿してもらい、ドライブ意欲を高めます。

## 機能紹介

|トップ画面| ログイン画面 |
|:-:|:-:|
 [![Image from Gyazo](https://i.gyazo.com/cef96859385f8d50e76e6db1dfc544d0.gif)](https://gyazo.com/cef96859385f8d50e76e6db1dfc544d0) |[![Image from Gyazo](https://i.gyazo.com/b7d7cab3795d8bffc6e41399547205d1.png)](https://gyazo.com/b7d7cab3795d8bffc6e41399547205d1)
|4つのメイン機能が一目でわかるようにし、すぐに機能がを使えるような動線にしました。|グーグルログインを用意しました。できるだけログインしなくとも利用できるようにしており、道の駅スタンプラリー機能、新規投稿機能以外は全てログインせずに使用できます。|

|おすすめのスポット一覧| おすすめのレストラン、休憩所、食事処検索 |
|:-:|:-:|
[![Image from Gyazo](https://i.gyazo.com/90079da977e4266337d4972d8549c242.gif)](https://gyazo.com/90079da977e4266337d4972d8549c242) | [![Image from Gyazo](https://i.gyazo.com/e12cdd86b504e6f7e46bebd83710efdb.gif)](https://gyazo.com/e12cdd86b504e6f7e46bebd83710efdb)
|おすすめのスポット一覧ボタンをhoverすると3つの機能が表示されるようにしました。|検索したい住所を入力して検索ボタンをクリックするとおすすめのスポットとスポットの魅力的な説明文を提示します。|

|ルート検索| 道の駅スタンプラリー機能|
|:-:|:-:|
[![Image from Gyazo](https://i.gyazo.com/e23cdd2f8f83c9edeaae1313da90f908.gif)](https://gyazo.com/e23cdd2f8f83c9edeaae1313da90f908) | [![Image from Gyazo](https://i.gyazo.com/09bfcdbb31a3278f1d6732d53d11a2b5.gif)](https://gyazo.com/09bfcdbb31a3278f1d6732d53d11a2b5)
|目的地を入力すると、現在地から目的地までの所要時間や経路を表示します。|ユーザーが道の駅を訪れたことをアプリに伝えていただくとスタンプを付与します。|

|イベント一覧|イベントピックアップ機能 |
|:-:|:-:|
[![Image from Gyazo](https://i.gyazo.com/012ea88efca9d2caf78f56151bd0b2da.gif)](https://gyazo.com/012ea88efca9d2caf78f56151bd0b2da)| [![Image from Gyazo](https://i.gyazo.com/94f4131c8810ff5cf3cc6713db6f130d.jpg)](https://gyazo.com/94f4131c8810ff5cf3cc6713db6f130d)
|投稿されたイベントがグーグルマップ上にピンで表示されており、一目で自分が行きたいイベントが分かるようになっています。|ランダムで投稿を3つ表示させています。|

|イベント作成|イベント詳細|
|:-:|:-:|
[![Image from Gyazo](https://i.gyazo.com/1bc514eb96aae95f7bbe94beb3b2f56b.png)](https://gyazo.com/1bc514eb96aae95f7bbe94beb3b2f56b)| [![Image from Gyazo](https://i.gyazo.com/dc882377b6d5165c1ae8b3422ff795fb.jpg)](https://gyazo.com/dc882377b6d5165c1ae8b3422ff795fb)
|ローカルやマイナーなイベントの情報を収集するためにユーザー投稿形式にしています。|イベントの開催期間などの詳細情報を掲示しています。|





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
