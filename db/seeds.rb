# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Recipe.destroy_all
rating = Rating.create(difficulty: "easy")

50.times do |index|
  rating.recipes.create!(title: Faker::Food.dish,
                        instructions: Faker::Food.description().chop,
                        ingredients: Faker::Food.ingredient().chop, rating_id: nil)
end

p "Created #{Recipe.count} spices"
