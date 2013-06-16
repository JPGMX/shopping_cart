class Brand < ActiveRecord::Base
  attr_accessible :name
  has_many :product_brands
  has_many :products, through: :product_brands
end