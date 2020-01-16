class AddForeignKeyForRecipes < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :recipes, :ratings
  end
end
