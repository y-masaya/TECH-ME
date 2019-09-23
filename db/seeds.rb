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
  Category.create!(
    {id: id, name: name}
  )
end