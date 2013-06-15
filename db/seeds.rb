# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  1.upto(10) do |i| 
   Product.create(:name => "User #{i}", :description => "description #{i}", :price => 100.01, :model_no => "MJ #{i}")
  end
  
 
      
