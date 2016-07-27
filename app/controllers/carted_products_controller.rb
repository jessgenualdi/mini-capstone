class CartedProductsController < ApplicationController
  def index
    @users_cart = CartedProduct.where(status: "carted", user_id: current_user.id)
    if @users_cart.length > 0
      render "index.html.erb"
    else
      flash[:warning] = "You have no items in your cart."
      redirect_to "/"
    end
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
