class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    @users = User.all
    render "new.html.erb"
  end

  def create
    @product = Product.new(
      user_id: params[:user_id],
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id],
      # url: params[:url],
    )

    if @product.save
      redirect_to "/products/#{@product.id}"
    else
      @users = User.all
      render "new.html.erb"
    end
  end

  def show
    @product = Product.find_by(id: params["id"])
  end

  def edit
    @product = Product.find_by(id: params[:id])
    @users = User.all
    render "edit.html.erb"
  end
end
