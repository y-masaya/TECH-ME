# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  [1, 'Python'],
  [2, 'Java'], 
  [3, 'Ruby'],
  [4, 'C++'], 
  [5, 'C#'], 
  [6, 'Java Script'],
  [7, 'PHP'], 
  [8, 'Swift'],
  [9, 'Scala'],
  [10, 'Go'],
  [11, 'Kotlin'],
  [12, 'HTML'],
  [13, 'CSS'], 
  [14, 'Ruby on Rails'], 
  [15, 'Spring'], 
  [16, 'AngularJS'], 
  [17, 'エラー関係'], 
  [18, 'その他']
].each do |id, name|
  Category.create(
    {id: id, name: name}
  )
end

[
  [1, 'ロイヤルガーデンカフェ', '愛知県名古屋市中区栄1-2-7 リッチモンドホテル名古屋納屋橋 1F', '11:00～23:00', File.open("./app/assets/images/ロイヤル.png"), 'Free Wi-Fiあり', 'https://royal-gardencafe.com/nagoya/'],
  [2, 'やば珈琲店', '愛知県名古屋市中区大須4-1-21 久屋南NOVAビル 1F', '9:00～23:00', '', 'Free Wi-Fiあり', 'https://central-hld.jp/yaba-coffee/'], 
  [3, 'ミッツコーヒースタンド (MITTS COFFEE STAND)', '愛知県名古屋市中区錦2-8-14 錦三輪ビル 1F', '7:00～19:00', '', 'Free Wifiに電源完備', 'http://www.mitts-coffee.com'],
  [4, 'Carlova360 NAGOYA', '愛知県名古屋市中区栄3-29-1 名古屋パルコ東館4F', '10:00~21:00', '', 'Free Wifiに電源完備', 'https://libroplus.co.jp/shop/1066/'], 
  [5, 'THE CUPS SAKAE', '愛知県名古屋市中区栄3-35-22', '10:00～23:00', '', 'Free Wifiに電源席あり', 'http://cups.co.jp/sakae.html'], 
  [6, 'Maison YWE', '愛知県名古屋市中区栄3-23-9 2F', '11:00〜23:00', '', 'Free Wi-Fiあり', 'http://maison-ywe.jp/'],
  [7, 'スターバックスコーヒー栄広小路店', '愛知県名古屋市中区錦3-24-24錦324ビル 1F', '7:00〜22:30', '', 'Free Wi-Fiあり', 'https://store.starbucks.co.jp/detail-365/'], 
  [8, '上島珈琲店サカエチカ店', '愛知県名古屋市中区栄3-4-6サカエチカ内', '7:30〜21:00', '', 'Free Wi-Fiあり', 'http://www.sakaechika.com/shop/restaurant/000080.html'],
  [9, 'BONCAFE栄店', '愛知県名古屋市中区錦3-15-30アパホテルエクセレント 2F', '11:00〜23:00', '', 'Free Wi-Fiあり', 'https://bon-cafe.jp/'],
  [10, 'タリーズコーヒーユニゾイン名古屋栄', '愛知県名古屋市中区錦3-16-30 ユニゾイン名古屋栄 1F', '7:00～22:00', '', 'Free Wi-Fiあり', 'https://map.tullys.co.jp/tullys/detailMap?account=tullys&bid=714'],
  [11, 'ドトールコーヒー 名古屋ミヤコ地下街店', '愛知県名古屋市中村区名駅4丁目9-10', '7:15～20:15', '', 'Free Wi-Fiあり', 'https://tabelog.com/aichi/A2301/A230101/23005070/']
].each do |id, name, address, time, image, supply, description|
  Shop.create(
    {id: id, name: name, address: address, time: time, image: image, supply: supply, description: description}
  )
end