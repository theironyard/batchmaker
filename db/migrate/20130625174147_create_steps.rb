class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.text :directions

      t.timestamps
    end
  end
end
