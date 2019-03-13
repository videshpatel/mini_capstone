# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

supplier2 = Supplier.new ({name:"Adidas", email: "adidas@adidas.com",phone_number: "3343490494"})
supplier2.save


supplier3 = Supplier.new ({name:"Stanley", email: "stanley@Stanley.com",phone_number: "86656544343"})
supplier3.save



# products = Product.all

# products.each do |product|
#   # assign it a new supplier_id
#   supplier_id = Supplier.all.sample.id
#   product.supplier_id = supplier_id
#   product.save
# end
 
# # or 
# Product.update_all(supplier_id: rand(1..3))