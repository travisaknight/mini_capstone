class Api::ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render "all_products.json.jb"
  end

  def single_product
    @products = Product.all.sample
    render "single_product.json.jb"
  end
end
