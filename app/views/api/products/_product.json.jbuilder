json.user current_user
json.id product.id
json.name product.name
json.price product.price
json.image_url product.images.url
json.description product.description
# json.current_user product.current_user   <<<<<<<<<<<<<<<<<

json.formatted do 
  json.discount product.is_discounted?
  json.tax product.tax  
  json.total product.total
  json.supplier_name product.supplier.name
end