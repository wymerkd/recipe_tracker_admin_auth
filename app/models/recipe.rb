class Recipe < ApplicationRecord
  validates :title, presence: true
  validates :ingredients, presence: true
  validates :instructions, presence: true
  belongs_to :rating

  before_save(:titleize_recipe)
  
  private
  def titleize_recipe
    self.title = self.title.titleize
  end
end
