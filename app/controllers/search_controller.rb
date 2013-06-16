class SearchController < ApplicationController
  def index
    @title = "Search Results"
    @products = Product.where(name: params[:keywords])
    render "products/index"
  end

end
