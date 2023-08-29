class AddIndexToChoicesTable < ActiveRecord::Migration[7.0]
  def change
    add_index :choices, [:name, :question_id], unique: true
  end
end
