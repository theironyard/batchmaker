class Step < ActiveRecord::Base
  attr_accessible :directions, :recipe_id, :ingredient_amounts_attributes

  belongs_to :recipe
  has_many :ingredient_amounts

  accepts_nested_attributes_for :ingredient_amounts, :allow_destroy => true

end
