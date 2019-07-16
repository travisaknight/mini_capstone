Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/products/new" => "products#new"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  get "/products/:id/edit" => "products#edit"

  namespace :api do
    post "/sessions" => "sessions#create"
    post "/users" => "users#create"

    get "/carted_products" => "carted_products#index"
    post "/carted_products" => "carted_products#create"

    get "/orders" => "orders#index"
    post "/orders" => "orders#create"

    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
  end
end
