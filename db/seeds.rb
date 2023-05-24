# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

5.times do
  restaurant = Restaurant.new(
    name: Faker::BossaNova.song,
    address: Faker::Address.country,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )
  restaurant.save!
end



# epicure = Restaurant.new(name: "Epicure", address: "75008 Paris", category: "french")
# epicure.save

# canberra = Restaurant.new(name: "canberra", address: "10008 Grenoble", category: "chinese")
# canberra.save

# bruxelles = Restaurant.new(name: "bruxelles", address: "10008 Bruxelles", category: "belgian")
# bruxelles.save

# roma = Restaurant.new(name: "roma", address: "10008 Rome", category: "italian")
# roma.save

# tokyo = Restaurant.new(name: "tokyo", address: "10008 tokyo", category: "japanese")
# tokyo.save
