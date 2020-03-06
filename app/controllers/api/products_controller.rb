class Api::ProductsController < ApplicationController
  def index
    @message = "Welcome, enjoy the Fannie Mae Chocolate"
    @products = Product.all
    render "index.json.jb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @product = Product.new
    product.name = params["name"]
    product.price = params["price"]
    product.description = prarms["description"]
    render "create.json.jb"
  end
end
