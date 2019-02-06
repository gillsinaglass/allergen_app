class RecipesController < ApplicationController


  before_action :get_recipe, only: [:update, :show,]

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    3.times { @recipe.recipe_ingredients.build }
  end

  def create
    @recipe = Recipe.create!(recipe_params)
    redirect_to @recipe
  end

  def show
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :user_id, recipe_idingredients: [:quantity, :ingredient_id])
  end

  def get_recipe
    @recipe = Recipe.find(params[:id])
  end
end
