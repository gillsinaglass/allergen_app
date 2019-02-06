# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Recipe.destroy_all
Allergy.destroy_all
RecipeIngredient.destroy_all
Ingredient.destroy_all

peanut = Ingredient.find_or_create_by!(name: "peanut")
oyster = Ingredient.find_or_create_by!(name: "oyster")
yam = Ingredient.find_or_create_by!(name: "yam")
water = Ingredient.find_or_create_by!(name: "water")

ryan = User.find_or_create_by!(name: "Ryan")
ben = User.find_or_create_by!(name: "Ben")
matthew = User.find_or_create_by!(name: "Matthew")

Allergy.find_or_create_by!(user: ryan, ingredient: peanut)
Allergy.find_or_create_by!(user: ben, ingredient: oyster)
Allergy.find_or_create_by!(user: matthew, ingredient: yam)

r1 = Recipe.find_or_create_by!(title: "Peanut Casserole", user: ryan)
r2 = Recipe.find_or_create_by!(title: "Yam Sorbet", user: ben)
r3 = Recipe.find_or_create_by!(title: "Oysters Rockerfeller", user: matthew)
r4 = Recipe.find_or_create_by!(title: "Ice Water", user: ryan)

RecipeIngredient.find_or_create_by!(recipe: r1, ingredient: peanut, quantity: 1)
RecipeIngredient.find_or_create_by!(recipe: r2, ingredient: yam, quantity: 2)
RecipeIngredient.find_or_create_by!(recipe: r3, ingredient: oyster, quantity: 4)
RecipeIngredient.find_or_create_by!(recipe: r4, ingredient: water, quantity: 3)
