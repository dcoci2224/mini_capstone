class Api::ProductsController < ApplicationController
  def index
    @message = "Welcome, enjoy the Fannie Mae Chocolate"
    @products = Product.all

    if params[:search]
      @products = @products.where("name ILIKE ?", "%#{params[:search]}%")
      @products = @products.order(:id => :asc)
    end

    if params[:discount]
      @products = @products.where("price <= ?", 14)
    end

    if params[:sort] == "price" && params[:sort_order] == "asc"
      @products = @products.order(price: :asc)
    elsif params[:sort] == "price" && params[:sort_order] == "desc"
      @products = @product.order(price: :desc)
    else
      @products = @products.order(id: :asc)
    end

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
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity #status 422
    end
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.name = params["name"]
    @product.price = params["price"]
    @product.description = params["description"]
    @product.id = params["id"]
    @product.image_url = params["image_url"]
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity #status 422
    end
  end

  def delete
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "Product destroyed!" }
  end
end
