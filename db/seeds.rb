puts "Cleaning database..."
Restaurant.destroy_all

restaurants = [ 
{ name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: Restaurant::CATEGORIES.sample },
{ name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: Restaurant::CATEGORIES.sample }, 
{ name: "Bloom", address: "7 Boundary St, London E2 7JE", category: Restaurant::CATEGORIES.sample }, 
{ name: "Pizza Hut", address: "56A Shoreditch High St, London E1 6PQ",category: Restaurant::CATEGORIES.sample }, 
{ name: "Bagatelle", address: "7 Boundary St, London E2 7JE", category: Restaurant::CATEGORIES.sample }, 
{ name: "Pjolter", address: "56A Shoreditch High St, London E1 6PQ",category: Restaurant::CATEGORIES.sample }, 
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

