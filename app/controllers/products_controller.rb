class ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.html.erb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @recipe = Recipe.new(
      name: params[:title],
      price: params[:ingredients],
      description: params[:directions],
      supplier_id: params[:chef],
      user_id: 1
    )
    @recipe.save
    # render 'show.html.erb'
    redirect_to "/products/#{@product.id}"
  end
end
