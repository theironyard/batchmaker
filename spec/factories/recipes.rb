# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recipe do
    name "MyString"
    author "MyString"
    public false
    image "MyString"
    type ""
    prep_time 1
    cook_time 1
    cook_temp 1
    farenheit false
    yield_amount 1
    yield_name "MyString"
    personal_notes "MyText"
  end
end
