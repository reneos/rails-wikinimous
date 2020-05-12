# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  title = "#{Faker::Hacker.adjective} #{Faker::Hacker.noun}".titleize
  content = "#{Faker::Hacker.noun.capitalize} #{Faker::Hacker.ingverb} -- #{Faker::Hacker.say_something_smart} #{Faker::Hacker.say_something_smart}"
  article = Article.new(title: title, content: content)
  article.save!
end
