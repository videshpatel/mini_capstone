class Api::CartedProductsController < ApplicationController

class Api::CartedProductsController < ApplicationController
  def index
    # @carted_products = CartedProduct.where(user_id: current_user.id, status: 'carted') => same as line below
    @carted_products = current_user.carted_products
    @carted_products = @carted_products.where(status: 'carted')
    render 'index.json.jbuilder'
  end

  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: 'carted'
    )
    @carted_product.save
    render 'show.json.jbuilder'
  end

  def destroy
    @carted_product = CartedProduct.find_by(id: params[:id])
    @carted_product.status = 'removed'
    @carted_product.save
    render json: {message: "you deleted an item"}
  end
end

end

