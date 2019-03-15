class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  #before_action :authenticate_admin, only: [:create, :update, :destroy]

 #everyone
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
  #everyone
  def show
    p 'current_user'
    p current_user
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    render 'show.json.jbuilder'
  end
  #admin
  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id]
     )
    if 
      @product.save
      render 'show.json.jbuilder'
    else
      @product.save
      render 'errors.json.jbuilder'
    end
  end
  #admin
  def update
    #find the product.
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    #modify the product.
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    if 
      @product.save
      render 'show.json.jbuilder'
    else
      @product.save
      render 'errors.json.jbuilder'
    end
  end    
  #admin
  def destroy
    #find the product
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    #destroy the product
    @product.destroy

    render 'destroy.json.jbuilder'
  end

end