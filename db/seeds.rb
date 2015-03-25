require 'faker'

Product.delete_all

10.times do
  Product.create(name: Faker::Commerce.product_name, description: Faker::Lorem.paragraph(3), price: rand(9..19999)*10)
end
