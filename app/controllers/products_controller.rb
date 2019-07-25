class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    @suppliers = Supplier.all
    render "new.html.erb"
  end

  def create
    @product = Product.new(
      # user_id: params[:user_id],
      supplier_id: params[:supplier_id],
      name: params[:name],
      price: params[:price],
      description: params[:description],
      # url: params[:url],
    )

    if @product.save
      redirect_to "/products/#{@product.id}"
    else
      @suppliers = Supplier.all
      render "new.html.erb"
    end
  end

  def show
    @product = Product.find_by(id: params["id"])
  end

  def edit
    @product = Product.find_by(id: params[:id])
    @suppliers = Supplier.all
    render "edit.html.erb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.price = params[:price]
    @product.description = params[:description]
    @product.supplier_id = params[:supplier_id]
    @product.save
    redirect_to "/products"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
  end
end
