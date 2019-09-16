class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.text :name, null: false
      t.references :user, foreign_key: true
      t.references :article, foreign_key: true
      t.timestamps
    end
  end
end
