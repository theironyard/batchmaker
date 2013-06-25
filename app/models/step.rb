class Step < ActiveRecord::Base
  attr_accessible :directions, :recipe_id

  belongs_to :recipe
  has_many :ingredient_amounts
end
