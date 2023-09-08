class AddBarColorToChoices < ActiveRecord::Migration[7.0]
  def change
    add_column :choices, :bar_color, :string, null: false 
  end
end
