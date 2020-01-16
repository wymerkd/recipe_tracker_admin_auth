class AddRatingsIdToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :rating_id, :integer
  end
end
