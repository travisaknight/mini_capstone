Rails.application.routes.draw do

  namespace :api do
    get "/products" => "products#test_method"
  end
end
