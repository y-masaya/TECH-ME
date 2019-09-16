class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :name, null:false
      t.text :desicription, null:false
      t.references :category, null:false,foreign_key: true
      t.references :user, null:false, foreign_key: true
      t.timestamps
    end
  end
end
