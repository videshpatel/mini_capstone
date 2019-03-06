class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create
    @product = Product.new(
      name: params[:input_name],
      price: params[:input_price],
      image_url: params[:input_image_url],
      description: params[:input_description],
     )
    @product.save
    render 'show.json.jbuilder'
  end

  def update
    #find the product.
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    #modify the product.
    @product.name = params[:name]
    @product.price = params[:price]
    @product.image_url = params[:image_url]
    @product.description = params[:description]
    
    @product.save

    render 'show.json.jbuilder'
  end

  def destroy
    #find the product
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    #destroy the product
    @product.destroy

    render 'destroy.json.jbuilder'
  end

end