class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end

  def index
    @title = "All products"
    @products = Product.all
  end

end