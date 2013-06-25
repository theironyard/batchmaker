class IngredientAmount < ActiveRecord::Base
  attr_accessible :amount, :ingredient_id, :recipe_id, :step_id, :unit
end
