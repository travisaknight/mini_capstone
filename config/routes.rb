Rails.application.routes.draw do
  namespace :api do
    get "/products" => "products#all_products"
    get "/single_product" => "products#single_product"
    get "single_product/:id" => "products#single_product"
  end
end
