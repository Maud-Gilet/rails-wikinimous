# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

seed_array = []

10.times do
  h = {
    title: Faker::HowIMetYourMother.quote,
    content: Faker::Lorem.paragraph(50)
  }
  seed_array << h
end

seed_array.each do |item|
  Article.create(item)
end
