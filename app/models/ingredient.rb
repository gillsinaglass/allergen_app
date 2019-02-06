class Ingredient < ApplicationRecord
  has_many :recipe_ingredients, dependent: :destroy
  has_many :recipes, through: :recipe_ingredients, dependent: :destroy
  has_many :allergies, dependent: :destroy
  has_many :users, through: :allergies

  delegate :count, to: :users, prefix: true
end
