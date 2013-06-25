class Recipe < ActiveRecord::Base
  attr_accessible(
    :author,
    :cook_temp,
    :cook_time,
    :farenheit,
    :image,
    :personal_notes,
    :prep_time,
    :public,
    :name,
    :category,
    :yield_amount,
    :yield_name,
    :user_id,
    :steps_attributes,
    :ingredient_amounts_attributes
  )

  belongs_to :user
  has_many :steps

  accepts_nested_attributes_for :steps, :allow_destroy => true
end