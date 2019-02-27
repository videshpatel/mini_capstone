class Api::ProductsController < ApplicationController
  def shirt
    @product = Product.first
    render "shirt_viewl.json.jbuilder"
  end

  def products_all
    @products = Product.all
    render "products_all_view.json.jbuilder"
  end

end
