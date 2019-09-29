class AddReferencesToComment < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :question, foreign_key: true
  end
end
