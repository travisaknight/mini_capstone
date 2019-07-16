class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def show
    @product = Product.find_by(id: params["id"])
  end

  def new
    render "new.html.erb"
  end
end
