class Api::SuppliersController < ApplicationController
  def create
    @supplier = Supplier.new(
      name: params["name"],
      email: params["email"],
      phone_number: params["phone_number"],
    )
    if @supplier.save
      render "index.json.jb"
    else
      render json: { errors: @supplier.errors.full_messages }, status: :unprocessable_entity #status 422
    end
  end
end
