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
    @product = Product.new(
      id: params["id"],
      name: params["name"],
      price: params["price"],
      description: params["description"],
      image_url: params["image_url"],
    )
    @product.save
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.name = params["name"]
    @product.price = params["price"]
    @product.description = params["description"]
    @product.id = params["id"]
    @product.image_url = params["image_url"]
    @product.save
    render "show.json.jb"
  end

  def delete
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "Product destroyed!" }
  end
end
