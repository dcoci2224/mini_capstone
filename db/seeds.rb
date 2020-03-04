# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
my_product = Product.new({ name: "Mint Meltaway", price: 10, description: "Mint/milk chocolate per pound" })
my_product.save

my_product1 = Product.new({ name: "Pixie", price: 12, description: "Milk chocolate with caramel and pecans per pound" })
my_product1.save

my_product2 = Product.new({ name: "Milk Chocolate Bars", price: 15, description: "10 milk chocolate bars" })
my_product2.save
