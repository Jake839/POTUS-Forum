class RemoveIndexFromCreatedAtInQuestionsTable < ActiveRecord::Migration[7.0]
  def change
    remove_index :questions, :created_at
  end
end
