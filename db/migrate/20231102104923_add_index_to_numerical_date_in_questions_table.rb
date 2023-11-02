class AddIndexToNumericalDateInQuestionsTable < ActiveRecord::Migration[7.0]
  def change
    add_index :questions, :numerical_date
  end
end
