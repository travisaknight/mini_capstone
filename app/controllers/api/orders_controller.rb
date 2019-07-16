class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end

  def create
    @order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    @order.save
    render "show.json.jb"

    carted_products = current_user.carted_products.where(status: "carted")
    calculated_subtotal = 0
    calculated_tax = 0
    calculated_total = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.product.price
      calculated_tax += carted_product.quantity * carted_product.product.tax
      calculated_total += carted_product.quantity * carted_product.product.total
    end

    carted_products.update_all(status: "purchased", order_id: @order.id)

    def show
      @order = current_user.orders.find_by(id: params[:user_id])
      render "show.json.jb"
    end
  end
end
