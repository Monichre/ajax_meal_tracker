class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.integer :user_id
      t.integer :meal_id
      t.integer :exercise_id
      t.timestamps
    end
  end
end
