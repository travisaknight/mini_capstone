class Api::ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render "single_product.json.jb"
  end

  def single_product
    product_id = params["id"]
    @products = Product.find_by(id: product_id)
    render "single_product.json.jb"
  end
end
