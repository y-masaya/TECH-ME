# アプリケーション概要
- Qiitaのような、プログラミング関係の記事の投稿や質問の投稿機能
- googleAPIを使って、名古屋市内の電源やwi-fiを使える飲食店を紹介しています。

# アプリケーションの機能一覧
- ユーザー管理
  - 新規登録／ログイン／ログアウト
- 技術記事情報
  - 一覧表示／作成者表示／詳細表示／新規登録／編集／削除機能
- 技術質問情報
  - 一覧表示／作成者表示／詳細表示／新規登録／編集／削除機能
- コメント機能
  - 一覧表示／新規登録／編集／削除機能
- 飲食店情報
  - 一覧表示

# アプリケーション内で使用している技術一覧
|種別|名称|
|開発言語|Ruby|
|フレームワーク|Ruby on Rails|
|マークアップ|HTML(haml),CSS(Sass)|
|フロントエンド|JavaScript(jQuery)|
|DB|MySQL|
|本番環境|AWS EC2|
|ユーザー管理|devise(Gem)|

# データベース
## usersテーブル
|Column|Type|option|
|------|----|------|
|nickname|string|null:false, unique: true|
|email|string|null: false, unique: true|
|password|string|null:false|
|profile|text| ------ |
|icon|string| ----- |
### Associatiton
- has_many :articles
- has_many :commetns
- has_one :image



## articleテーブル
|Column|Type|option|
|------|----|------|
|name|string|null:false|
|desicription|text|null:false|
|category|references|null:false, foreign_key: true|
|user|references|null:false|
|comment|references|-------|
### Associatiton
- belongs_to :user
- has_many :comments
- has_many :images
- has_many :categories


## commentテーブル
|Column|Type|option|
|------|----|------|
|text|string|null:false|
|user|references|null:false,foreign_key: true|
|airticle|references|null:false,foreign_key: true|
### Associatiton
- belongs_to :user
- belongs_to :article


## imagesテーブル
|Column|Type|option|
|------|----|------|
|name|string|null: false|
|airticle|references|null:false,foreign_key: true|
### Associatiton
- belongs_to :user
- belongs_to :article


## categoriesテーブル
|Column|Type|option|
|------|----|------|
|name|string|null:false|
### Associatiton
- belongs_to :article

