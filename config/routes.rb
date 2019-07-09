Rails.application.routes.draw do
  namespace :api do
    post "/orders" => "orders#create"
    post "/sessions" => "sessions#create"
    post "/users" => "users#create"
    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
  end
end
