
## サービス名
コドラ
<br>
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

## 機能候補
MVP
・会員登録・ログイン
・投稿一覧
・投稿詳細
・投稿
・ホーム
・おすすめスポット検索
・マイページ
・グーグルマップ上にユーザーが投稿したイベントがピンで表示
・ピンをクリックすると詳細表示
・ルート検索

## 本リリース
・Google認証機能
・xシェア機能
・保存したルート一覧画面
・いいね

## 機能の実装方針予定
開発環境: docker
バックエンド: Ruby 3.2.2/Ruby on Rails 7系
データベース: MySQL
	
	

## 技術構成
### 使用技術
|カテゴリ|技術|
|:-------------|:------------|
|フロントエンド|JavaScript / TailwindCSS / Rails 7.0.8(Hotwire/Turbo)|
|バックエンド|Ruby 3.2.2 / Rails 7.0.8|
|データベース|PostgreSQL|
|環境構築|Docker|
|インフラ|Render / Amazon S3 |
|Web API| Open AI API(GPT-4) / Google Maps JavaScript API / Google Places API / Google Geolocation API / Google Sign-In |
	
	

[![Image from Gyazo](https://i.gyazo.com/7e73709546f49de6076c7e34576d00d4.png)](https://gyazo.com/7e73709546f49de6076c7e34576d00d4)
