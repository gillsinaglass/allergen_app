class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient
  delegate :name, to: :ingredient
  delegate :title, to: :recipe
end
