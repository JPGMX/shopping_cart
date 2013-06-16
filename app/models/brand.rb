class Brand < ActiveRecord::Base
  attr_accessible :name
  has_many :product_brand
  has_many :products, through: :product_brand
end