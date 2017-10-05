class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all
  end

  def add_to_cart
    @product = Product.find(params[:id])
    flash[:notice] = "测试加入购物车"
    redirect_to :back
  end
end
