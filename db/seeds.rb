# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product1 = Product.new ({name:"Shirt", price:"20.00", image_url:"https://ae01.alicdn.com/kf/HTB1gE7JbSFRMKJjy0Fhq6x.xpXaw/2018-Summer-Mens-Dress-Shirts-Cotton-Solid-Casual-Shirt-Men-Slim-Fit-Plus-Size-Long-sleeve.jpg_640x640.jpg", description:"Pink Shirt." })
product1.save

product2 = Product.new ({name:"Pants", price:"40.00", image_url:"https://cdn.shopify.com/s/files/1/0108/7802/products/NEW_PRODUCTIMAGES-_pants-essex-khaki-1.jpg?v=1537648574", description:"Kahki pants." })
product2.save

product3 = Product.new ({name:"Phone", price:"899.99", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKyWvFSoon8hD7NxuAAgh68Jspe1Qox_Q4rGUNqcufK6691z_O", description:"Samsung Galaxy S10." })
product3.save

product4 = Product.new ({name:"Toothpaste", price:"2.00", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbG8fwX-SQgrWngD7JKJ-NnfhFBz6WMGEQx5RgQBTYFjp35EmZKw", description:"Aquafresh toothpaste." })
product4.save
