require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  titre =  Faker::HowIMetYourMother.catch_phrase
  description = Faker::ChuckNorris.fact
  article = Article.create(title: titre, content: description)
  article.save
end
