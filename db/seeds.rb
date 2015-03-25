require 'faker'

Product.delete_all

5.times do
  Product.create(name: Faker::Commerce.product_name, description: Faker::Lorem.paragraph(3), price: rand(99..999999))
end
