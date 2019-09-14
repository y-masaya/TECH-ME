class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :name, null:false
      t.text :desicription, null:false
      t.integer :category, null:false,foreign_key: true
      t.integer :user, null:false
      t.integer :comment
      t.timestamps
    end
  end
end
