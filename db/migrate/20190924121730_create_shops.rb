class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name, null:false
      t.string :address, null:false
      t.string :time, null:false
      t.string :image
      t.string :supply
      t.text :description
      t.timestamps
    end
  end
end
