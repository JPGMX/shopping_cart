class Product < ActiveRecord::Base
  attr_accessible :description, :model_no, :name, :price, :text
  
  #class method
  
  def self.home_page_products
    order.sample(9)
  end
  
  #instance method
  def featured?
  end
end
