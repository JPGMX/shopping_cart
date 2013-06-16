class ProductManufacturer < ActiveRecord::Base
  attr_accessible :brand_id, :product_id

  belongs_to :brand
  belongs_to :product

end