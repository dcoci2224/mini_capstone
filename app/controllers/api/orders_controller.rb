class Api::OrdersController < ApplicationController
  def index
    @orders = Order.all
    render "index.json.jb"
  end

  def create
    product = Product.find_by(id: params[:product_id])

    calculated_subtotal = Product.find_by(id: params[:product_id]).price * params[:quantity].to_i
    calculated_tax = product.tax params[:quantity].to_i
    calculated_total = calculated_total + calculated_tax

    @order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      sub_total: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    if @order.save
      render "show.json.jb"
    else
      render json: { errors: @order.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render "show.json.jb"
  end
end
