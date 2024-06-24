# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

# Define the seed data

puts "Cleaning database"
Flat.destroy_all
User.destroy_all


puts "Creating new users"
# users = [
 # { first_name: 'Marco', last_name: 'Tugnolo', email: 'marco.tugnolo@example.com', password: 'password1' },
 # { first_name: 'Jane', last_name: 'Smith', email: 'jane.smith@example.com', password: 'password2' },
 # { first_name: 'Lucy', last_name: 'Johnson', email: 'Lucy.johnson@example.com', password: 'password3' }
#]

user1 = User.create!(first_name: 'Marco', last_name: 'Tugnolo', email: 'marco.tugnolo@example.com', password: 'password1')
user2 = User.create!(first_name: 'Jane', last_name: 'Smith', email: 'jane.smith@example.com', password: 'password2')
user3 = User.create!(first_name: 'Lucy', last_name: 'Johnson', email: 'Lucy.johnson@example.com', password: 'password3')

# Create the users in the database
#users.each do |user_data|
 # User.create!(user_data)
#end

puts "Creating new flats"
flats = [
  { title: 'Cozy Cottage',
    description: 'A small, cozy cottage in the countryside.',
    address: '123 Country Lane',
    price_per_night: 75.0,
    category: 'Cottage',
    user: user1
  },
  {
    title: 'Modern Apartment',
    description: 'A sleek, modern apartment in the city.',
    address: '456 City Avenue',
    price_per_night: 150.0,
    category: 'Apartment',
    user: user2
  },
  {
    title: 'Beach House',
    description: 'A beautiful house by the beach.',
    address: '789 Ocean Drive',
    price_per_night: 200.0,
    category: 'House',
    user: user3
  },
  {
    title: 'Mountain Cabin',
    description: 'A rustic cabin in the mountains.',
    address: '101 Mountain Road',
    price_per_night: 100.0,
    category: 'Cabin',
    user: user1
  },
  {
    title: 'Urban Studio',
    description: 'A compact studio apartment in the heart of downtown.',
    address: '111 Urban Plaza',
    price_per_night: 90.0,
    category: 'Studio',
    user: user2
  },
  {
    title: 'Luxury Villa',
    description: 'A luxurious villa with all the amenities.',
    address: '222 Luxury Blvd',
    price_per_night: 300.0,
    category: 'Villa',
    user: user3
  }
]

# Create flats from the array of hashes
flats.each do |flat|
  Flat.create!(flat)
end

puts "Seeded #{Flat.count} flats."
