# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# collection: [ "iPod Classic", "iPod Mini", "iPod Nano", "iPod Shuffle", "iPod Touch" ]

puts "Creating seeds…"

user_1 = User.create!(first_name: "hans", last_name: "bousquet", email: "hans@lewagon.org", password: "lewagon")

cat_1 = Category.create!(name: "iPod Classic")
cat_2 = Category.create(name: "iPod Mini")
cat_3 = Category.create(name: "iPod Nano")
cat_4 = Category.create(name: "iPod Shuffle")
cat_5 = Category.create(name: "iPod Touch")

ipod_1 = Ipod.create!(name: "iPod Touch brand new", description: "Never used!", color: "Grey", capacity: 64, state: "Excellent", price: 98, category: cat_5, user: user_1)
ipod_2 = Ipod.create(name: "Used iPod Shuffle", description: "I'm selling my old iPod.", color: "White", capacity: 16, state: "Fair", price: 32, category: cat_4, user: user_1)
ipod_3 = Ipod.create(name: "Great iPod Nano", description: "Great iPod Nano to sell.", color: "Pink", capacity: 128, state: "Good", price: 77, category: cat_3, user: user_1)
ipod_4 = Ipod.create(name: "Old iPod Mini", description: "Ipod mini in good condition.", color: "Green", capacity: 32, state: "Good", price: 54, category: cat_2, user: user_1)
ipod_5 = Ipod.create(name: "Rare iPod Classic", description: "Ipod first generation!", color: "Black", capacity: 256, state: "Fair", price: 62, category: cat_1, user: user_1)

puts "Seeds over!"
