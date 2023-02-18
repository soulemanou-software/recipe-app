# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Food.create(name: "Pizza", measurement_unit: "2kg", price: 10, quantity: 1, user_id: 1)
# Food.create(name: "Sharwama", measurement_unit: "4kg", price: 50, quantity: 6, user_id: 1)
# Food.create(name: "Pancakes", measurement_unit: "1kg", price: 5, quantity: 1, user_id: 1)
# Food.create(name: "Chips", measurement_unit: "1kg", price: 5, quantity: 1, user_id: 1)
# Food.create(name: "Coke", measurement_unit: "1l", price: 5, quantity: 1, user_id: 1)

RecipeFood.create(recipe_id: 1, food_id: 1, quantity: 28)
RecipeFood.create(recipe_id: 1, food_id: 2, quantity: 1)