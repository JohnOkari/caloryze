# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding"
    # meals table
Meal.create(food: "Grilled chicken", meal_type: "Lunch", calories: 500)
Meal.create(food: "Salmon with steamed vegetables", meal_type: "Dinner", calories: 600)
Meal.create(food: "Oatmeal with banana and almond milk", meal_type: "Breakfast", calories: 350)
Meal.create(food: "Greek yogurt with mixed berries and granola", meal_type: "Snack", calories: 200)

# users table
User.create(password: 123456, password_digest: 123456)
User.create(password: 123789, password_digest: 123789)
User.create(password: 987654, password_digest: 987654)
User.create(password: 456321, password_digest: 456321)


puts "Done Seeding"