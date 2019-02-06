class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients, dependent: :destroy

  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :recipe_ingredients, reject_if: :all_blank

  def ingredients=()
  end
end
