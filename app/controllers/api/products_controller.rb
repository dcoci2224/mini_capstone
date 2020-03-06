class Api::ProductsController < ApplicationController
  def all_products_action
    @message = "Welcome, enjoy the Fannie Mae Chocolate"
    @all_products = Product.all
    render "all_products.json.jb"
  end

  def first_product_action
    @product = Product.first
    render "first_product.json.jb"
  end

  def any_product_action
    product_id = params["id"]
    #product_name = params["name"]
    #product_price = params["price"]
    #@product = Product.find_by(name: product_name)
    #@product = Product.find_by(price: product_price)
    @product = Product.find_by(id: product_id)
    render "product.json.jb"
  end
end
