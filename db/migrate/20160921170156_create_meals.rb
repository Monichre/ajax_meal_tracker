class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :calorie_count
      t.integer :entry_id

      t.timestamps
    end
  end
end
