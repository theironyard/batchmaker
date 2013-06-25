class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :author
      t.boolean :public
      t.string :image
      t.string :type
      t.integer :prep_time
      t.integer :cook_time
      t.integer :cook_temp
      t.boolean :farenheit
      t.integer :yield_amount
      t.string :yield_name
      t.text :personal_notes

      t.timestamps
    end
  end
end
