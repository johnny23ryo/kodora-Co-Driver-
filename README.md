
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
[![Image from Gyazo](https://i.gyazo.com/7e73709546f49de6076c7e34576d00d4.png)](https://gyazo.com/7e73709546f49de6076c7e34576d00d4)

## ER図
[![Image from Gyazo](https://i.gyazo.com/5e83a60f4a2d722922f47e8bdb05cbf9.png)](https://gyazo.com/5e83a60f4a2d722922f47e8bdb05cbf9)
