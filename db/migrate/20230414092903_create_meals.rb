class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :food_name
      t.integer :protein
      t.integer :fat
      t.integer :carbohydrates
      t.timestamps
    end
  end
end
