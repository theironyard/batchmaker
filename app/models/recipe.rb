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
    :type,
    :yield_amount,
    :yield_name,
    :user_id
  )

  belongs_to :user
  has_many :steps
end