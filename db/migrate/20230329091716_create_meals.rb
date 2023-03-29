class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.string :food
      t.string :meal_type
      t.integer :calories
      t.integer :user_id

      t.timestamps
    end
  end
end
