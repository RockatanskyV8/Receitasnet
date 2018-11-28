class AddNewFieldsToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :prepare_mode, :text
    add_column :recipes, :cost, :decimal
  end
end
