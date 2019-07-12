class Api::CartedProductsController < ApplicationController
  def create
    before_action :authenticate_user

    @carted_product = CartedProduct.new(
      status: "carted",
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
    )
    render "show.json.jb"
  end
end
