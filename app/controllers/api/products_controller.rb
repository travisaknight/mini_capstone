class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def create
    @products = Product.new(
      name: params["name"],
      price: params["price"],
      image: params["image_url"],
      description: params["description"],
    )
    @products.save
    render "show.json.jb"
  end

  def show
    @products = Product.find_by(id: params["id"])
    render "show.json.jb"
  end
end
