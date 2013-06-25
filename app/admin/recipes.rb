ActiveAdmin.register Recipe do
  form do |f|
    f.inputs "Recipe Details" do
      f.input :name
      f.input :user
      f.input :author
      f.input :cook_temp
      f.input :cook_time
      f.input :farenheit
      f.input :image
      f.input :personal_notes
      f.input :prep_time
      f.input :public
      f.input :name
      f.input :category
      f.input :yield_amount
      f.input :yield_name
      f.has_many :steps do |s|
        s.input :directions
        s.has_many :ingredient_amounts do |i|
          i.input :unit
          i.input :amount
          i.input :ingredient
        end
      end
    end
    f.actions
  end
end
