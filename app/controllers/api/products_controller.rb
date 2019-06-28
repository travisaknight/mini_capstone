class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def create
    @products = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    @products.save
    render "show.json.jb"
  end

  def show
    @products = Product.find_by(id: params["id"])
    render "show.json.jb"
  end

  def update
    @products = Product.find_by(id: params["id"])
    @products.name = params["name"] || @products.name
    @products.price = params["price"] || @products.price
    @products.image_url = params["image_url"] || @products.image_url
    @products.description = params["description"] || @products.description
    @products.save
    render "show.json.jb"
  end

  def destroy
    @products = Product.find_by(id: params["id"])
    @products.destroy
    render json: { message: "Yo. You deleted that product. Whoops." }
  end
end
