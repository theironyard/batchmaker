# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ingredient_amount do
    step_id "MyString"
    recipe_id "MyString"
    ingredient_id "MyString"
    amount 1.5
    unit "MyString"
  end
end
