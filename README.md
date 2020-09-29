# LMTD(loose muffin top diet)

食生活改善に特化した商品、料理のツイートアプリです。<br/>


### http://18.180.255.77/

<a href="http://18.180.255.77/">
  <img width="1440" alt="スクリーンショット 2020-09-30 2 59 41" src="https://user-images.githubusercontent.com/67801049/94597922-2d805800-02c9-11eb-8c90-6901b4b1219f.png"></a>

---
### 制作背景

近年のフィットネスブームから食習慣の見直しをする方が増えました。しかし、ダイエットに効果的な食材、料理を検索すると文字の羅列で表示されるまとめ記事ばかりの印象があります。<br/>
<br/>
そこでダイエット食限定のツイートアプリを作れば迷わず直感的に、その日の気分に合わせて画像付で食事を選ぶことができると考え、開発に至りました。

---
### 機能一覧
* ユーザー登録、ログイン  ( devise等 ) 
* 投稿機能
* 画像アップロード ( carrierwave, minimagick, fog-aws ）
* 検索機能、コメント機能、いいね機能 ( ajax )
* ページネーション ( kaminari )
* カテゴリ機能

---
### インフラ
* AWS
	* EC2
	* S3

---
### バックエンド
Ruby 2.6.5<br/>
Rails 6.0.3<br/>
MariaDB 5.5.64<br/>

---
### フロントエンド
HTML <br/>
Haml <br/>
CSS <br/>
Scss <br/>
Javascript <br/>
jQuery <br/>

---
### 開発
VSCode<br/>

バージョン管理:<br/>
* Git
* GitHub

---
### ER図
![ER図]<img width="1440" alt="er図" src="https://user-images.githubusercontent.com/67801049/94627166-c62dcc80-02f7-11eb-93c1-a55b4d23339c.png">

---
### 課題や今後実装したい機能
* フォロー機能
* いいね一覧表示ページ

---
