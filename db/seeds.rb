# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Product.create( name: Faker::Commerce.product_name,
                  price: rand(3500..17500),
                  description: Faker::Lorem.paragraph(2, true, 2))
  User.create(  name: Faker::Name.name,
                username: Faker::Pokemon.name,
                password: "password")
  Review.create(  review: Faker::Lorem.paragraph(2, true, 4),
                  user_id: rand(1..10),
                  product_id: rand(1..10))
end
