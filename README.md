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

