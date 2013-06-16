class CreateProductBrands < ActiveRecord::Migration
  def change
    create_table :product_brands do |t|
      t.integer :product_id
      t.string :brand_id_integer

      t.timestamps
    end
  end
end
