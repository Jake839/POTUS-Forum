class AddDateToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :date_string, :string, default: "", null: false 
  end
end
