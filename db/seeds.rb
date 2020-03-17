# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
my_product = Product.new({ name: "Mint Meltaway", price: 10, description: "Mint/milk chocolate per pound." })
my_product.save

my_product2 = Product.new({ name: "Pixie", price: 12, description: "Milk chocolate with caramel and pecans per pound." })
my_product2.save

my_product3 = Product.new({ name: "Milk Chocolate Bars", price: 15, description: "10 milk chocolate bars." })
my_product3.save

my_product4 = Product.new({ name: "Trinidads", price: 17, description: "Smooth chocolate ganache cneter smothered in a toasted coconut coating by the pound." })
my_product4.save

my_product5 = Product.new({ name: "Buckeyes", price: 16, description: "Creamy peanut butter center in our signature milk chocolate by the pound." })
my_product5.save

my_image = Image.new({ url: "https://cdn.shopify.com/s/files/1/0972/7116/products/Fannie_May_Mint_Meltaways_Milk_Chocolates_-_4.2-oz._Bag_-_Individuals_600x.jpg?v=1564774013", product_id: 4 }) #mint
my_image.save

my_image = Image.new({ url: "https://images-na.ssl-images-amazon.com/images/I/81hvPADVphL._SL1500_.jpg", product_id: 4 }) #mint
my_image.save

my_image = Image.new({ url: "https://i.pinimg.com/originals/3d/85/48/3d854854e6cdcdd47fe0a22f9c057b9b.jpg", product_id: 3 }) #chocolate bars
my_image.save

my_image = Image.new({ url: "https://www.nicepng.com/png/detail/848-8483455_fannie-may-chocolate-bars.png", product_id: 3 }) #chocolate bars
my_image.save

my_image = Image.new({ url: "https://s3.amazonaws.com/cdn.tastesofchicago.com/images/uploads/category_1342_7395.jpg", product_id: 2 }) #pixie
my_image.save

my_image = Image.new({ url: "https://www.fanniemay.com/assets/1/6/pixi.jpg", product_id: 2 }) #pixie
my_image.save

my_image = Image.new({ url: "https://www.fanniemay.com/assets/1/6/trinidads.png", product_id: 7 }) #trinidad
my_image.save

my_image = Image.new({ url: "https://i.pinimg.com/originals/5f/35/2d/5f352dc7126e68688715726b89515d4e.jpg", product_id: 7 }) #trinidad
my_image.save

my_image = Image.new({ url: "https://images-na.ssl-images-amazon.com/images/I/51QnKnx6z9L._SL1197_.jpg", product_id: 8 }) #buckeye
my_image.save

my_image = Image.new({ url: "https://www.flavorohio.com/wp-content/uploads/2019/12/fannie-may-buckeyes-sm-bx.jpg", product_id: 8 }) #buckeye
my_image.save

my_image = Image.new({ url: "https://i.pinimg.com/originals/f5/28/e9/f528e9caf727569047299812cafeea9e.jpg", product_id: 10 }) #pretzels
my_image.save

my_image = Image.new({ url: "https://images-na.ssl-images-amazon.com/images/I/611E6VJ0n2L._SX425_.jpg", product_id: 10 }) #pretzels
my_image.save
