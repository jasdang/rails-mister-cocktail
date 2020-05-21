# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ingredients = ['mint leaves', 'vodka', 'rhum', 'tequila', 'orange juice', 'tomato juice']

puts 'Cleaning up database'
Ingredient.destroy_all

ingredients.each do |ingredient|
  Ingredient.create!(name: ingredient)
end

puts 'Done seeding!'
