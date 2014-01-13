class Admin::ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new params[:product].permit(:name, :description, :price, :image_url)
    
    if @product.save
    redirect_to admin_products_url
    
    else
      render :new
    end 
  end

  def edit
    @products=Product.all

  end

  def show
  end

  def destroy
  end
end
