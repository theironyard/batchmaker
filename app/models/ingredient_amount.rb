class IngredientAmount < ActiveRecord::Base
  attr_accessible :amount, :ingredient_id, :recipe_id, :step_id, :unit

  belongs_to :step
  belongs_to :ingredient
end
