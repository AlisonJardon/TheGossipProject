# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#creation de 10 users
10.times do
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph_by_chars, email: Faker::Internet.email, age: rand(0..99))
end

#creation des villes
10.times do
	City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

#creation des gossips
20.times do
	Gossip.create(title: Faker::Book.title, content: Faker::Lorem.paragraph_by_chars)
end

#creation des tags
10.times do
	Tag.create(title: Faker::Book.title)
end