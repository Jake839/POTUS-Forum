class RemoveIndexFromChoicesTable < ActiveRecord::Migration[7.0]
  def change
    remove_index :choices, :question_id
  end
end
