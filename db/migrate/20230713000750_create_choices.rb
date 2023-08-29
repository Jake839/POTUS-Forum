class CreateChoices < ActiveRecord::Migration[7.0]
  def change
    create_table :choices do |t|
      t.string :name, null: false 
      t.integer :question_id, null: false 
      t.integer :votes, null: false

      t.timestamps
    end

    add_index :choices, :question_id
  end
end
