# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese", phone_number: "0720358945" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "japanese", phone_number: "0720341945" }
mamasita = { name: "Mamasita", address: "23 Shoreditch High St, New York", category: "italian", phone_number: "0625035845" }
kokomo = { name: "Kokomo", address: "1 rue de la grosse cloche, Bordeaux", category: "french", phone_number: "0425025845" }
chezmomo = { name: "Chezmomo", address: "3 rue du string, Annesy", category: "belgian", phone_number: "0372525845" }

[dishoom, pizza_east, mamasita, kokomo, chezmomo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
