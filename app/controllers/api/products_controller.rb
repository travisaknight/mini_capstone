class Api::ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render "all_products.json.jb"
  end

  def single_product
    @products = Product.first
    render "single_product.json.jb"
  end
end
