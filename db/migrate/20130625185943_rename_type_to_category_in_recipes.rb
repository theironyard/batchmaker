class RenameTypeToCategoryInRecipes < ActiveRecord::Migration
  def change
    rename_column :recipes, :type, :category
  end
end
