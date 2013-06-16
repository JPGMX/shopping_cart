class Product < ActiveRecord::Base
  attr_accessible :description, :model_no, :name, :price, :inventory, :image, :category_ids

  has_and_belongs_to_many :categories
  has_many :product_brands
  has_many :manufacturers, through: :product_brands

  has_attached_file :image, :styles => {:medium => "300x300>", :thumb => "100x100>"}
  #class method
  
  def self.home_page_products	
    #where (featured:true)
	order.sample(9)	
	
  end
  
  def self.available
    where("inventory is not null and >?",0)
  end
  
  def related_products
    Product.order.sample (3)
  end
  
  def in_stock?
    inventory.to_i > 0
  end
  
  #instance method
  def featured?
  end
end
