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
end
