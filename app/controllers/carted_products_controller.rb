class CartedProductsController < ApplicationController
  def index
    in_cart = CartedProduct.where(status: "carted")
    @users_cart = in_cart.where(user_id: current_user.id)
  end

  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      quantity: params['quantity'],
      dog_id: params[:id],
      status: "carted"
    )
    @carted_product.save
    flash[:success] = "Dog added!!"
    redirect_to '/carted_products'
  end
end
