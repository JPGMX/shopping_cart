class PagesController < ApplicationController
  def home
    @home_page_products = Product.home_page_products
  end
end
