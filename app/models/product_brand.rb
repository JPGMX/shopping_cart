class ProductBrand < ActiveRecord::Base
  attr_accessible :brand_id_integer, :product_id
  belongs_to :brand
  belongs_to :products
end
