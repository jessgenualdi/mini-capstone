class OrdersController < ApplicationController
  def create
    @dog = Dog.find_by(id: params['product_id'])
    subtotal = params['subtotal'].to_f * params['quantity'].to_f
    tax = params['tax'].to_f * params['quantity'].to_f
    total = params['total'].to_f * params['quantity'].to_f
    @order = Order.new(
      user_id: current_user.id,
      quantity: params['quantity'],
      product_id: params['product_id'],
      total: total,
      tax: tax,
      subtotal: subtotal
    )
    flash[:success] = "Order Complete!"
    @order.save
    render 'show.html.erb'
  end
end
