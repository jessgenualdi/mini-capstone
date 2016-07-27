class OrdersController < ApplicationController
  def create
    @carted_products = CartedProduct.where(status: "carted", user_id: current_user.id)

    quantity = 0
    subtotal = 0

    @carted_products.each do |product|
      quantity = quantity + product.quantity
      row_total = product.quantity.to_f * product.dog.price.to_f
      subtotal = row_total + subtotal
    end

    tax = subtotal * 0.09
    total = tax + subtotal

    @order = Order.new(
      quantity: quantity,
      subtotal: subtotal,
      tax: tax,
      total: total,
      user_id: current_user.id
    )

    flash[:success] = "Order Complete!"
    @order.save

    @carted_products.each do |product|
      product.status = "purchased"
      product.order_id = @order.id
      product.save
    end

    render 'show.html.erb'
  end
end
