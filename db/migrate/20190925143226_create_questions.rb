class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title, null:false
      t.string :content, null:false
      t.references :category, null:false,foreign_key: true
      t.timestamps
    end
  end
end
