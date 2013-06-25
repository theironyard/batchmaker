class AddRecipeIdToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :recipe_id, :string
  end
end
