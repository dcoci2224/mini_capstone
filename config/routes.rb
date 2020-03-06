Rails.application.routes.draw do
  namespace :api do
    get "/all_products" => "products#all_products_action"
    get "/first_product" => "products#first_product_action"
    get "/any_product" => "products#any_product_action"
    get "/any_product/:id" => "products#any_product_action"
  end
end
