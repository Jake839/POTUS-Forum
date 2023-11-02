class AddNumericalDateToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :numerical_date, :integer, default: 0, null: false 
  end
end
