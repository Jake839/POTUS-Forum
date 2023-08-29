class AddForeignKeyToChoicesTable < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :choices, :questions, column: :question_id
  end
end
