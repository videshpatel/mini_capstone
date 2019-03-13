class Api::ProductsController < ApplicationController

  def index
    if params[:search]
      @products = Product.where("name LIKE ?", "%#{params[:search]}%")
    else
      @products = Product.all
    end

    if params[:discount] == "true"
      # do a thing
      @products = @products.where("price < ?", 5)
    end

    if params[:sort] && params[:sort_order]
      @products = @products.order(params[:sort] => params[:sort_order])
    end
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
      # image_url: params[:input_image_url],
      description: params[:input_description],
     )
    if 
      @product.save
      render 'show.json.jbuilder'
    else
      @product.save
      render 'errors.json.jbuilder'
    end
  end

  def update
    #find the product.
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    #modify the product.
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    # @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    if 
      @product.save
      render 'show.json.jbuilder'
    else
      @product.save
      render 'errors.json.jbuilder'
    end
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