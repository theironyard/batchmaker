class Ingredient < ActiveRecord::Base
  attr_accessible :name

  has_many :ingredient_amounts
end
