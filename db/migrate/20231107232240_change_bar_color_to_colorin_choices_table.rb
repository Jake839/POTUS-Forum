class ChangeBarColorToColorinChoicesTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :choices, :bar_color, :color
  end
end