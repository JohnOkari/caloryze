# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(naJonteme: "Luke", movie: movies.first)
puts "Seeding"
 # Seed data for users table
User.create(username: "JohnDoe", password: "password123", password_digest: "password_digest_123")
User.create(username: "JaneDoe", password: "password456", password_digest: "password_digest_456")
User.create(username: "BobSmith", password: "password789", password_digest: "password_digest_789")

# Seed data for meals table
Meal.create(food: "Eggs Benedict", meal_type: "breakfast", calories: 500, user_id: 1)
Meal.create(food: "Grilled Chicken Salad", meal_type: "lunch", calories: 400, user_id: 1)
Meal.create(food: "Spaghetti Bolognese", meal_type: "dinner", calories: 600, user_id: 2)
Meal.create(food: "Greek Yogurt with Berries", meal_type: "breakfast", calories: 300, user_id: 2)
Meal.create(food: "Turkey Sandwich", meal_type: "lunch", calories: 350, user_id: 2)
Meal.create(food: "Grilled Salmon", meal_type: "dinner", calories: 550, user_id: 3)
Meal.create(food: "Oatmeal with Fruit", meal_type: "breakfast", calories: 250, user_id: 3)
Meal.create(food: "Caesar Salad", meal_type: "lunch", calories: 400, user_id: 3)



puts "Done Seeding"