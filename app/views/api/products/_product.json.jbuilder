json.user current_user
json.id product.id
json.name product.name
json.price product.price
json.images product.images
json.description product.description
json.categories product.categories.name

json.formatted do 
  json.discount product.is_discounted?
  json.tax product.tax  
  json.total product.total
  json.supplier_name product.supplier.name
end