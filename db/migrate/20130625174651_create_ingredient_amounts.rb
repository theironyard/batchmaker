class CreateIngredientAmounts < ActiveRecord::Migration
  def change
    create_table :ingredient_amounts do |t|
      t.string :step_id
      t.string :recipe_id
      t.string :ingredient_id
      t.float :amount
      t.string :unit

      t.timestamps
    end
  end
end
