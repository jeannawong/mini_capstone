class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    #OR @orders = Order.where(user_id: current_user.id)
    render "index.json.jb"
  end

  def create
    # Open the carted products table
    # Find the products with a status of "carted"
    carted_products = current_user.carted_products.where(status: "carted")

    # Get the price from the products in the cart and multiply them by the quantity given by the user
    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.product.price #quantity is in carted_products table for each row; price is not in carted_products table but in products table so you have to call on carted_product.PRODUCT.price
    end

    # Calculate tax and total
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax
    # Save the order in the database

    @order = Order.new(
      user_id: current_user.id,
      # product_id: params["product_id"], this is now in carted_products controller
      # quantity: params["quantity"], this is now in carted_products controller
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    # @order = Order.new(
    #   user_id: current_user.id,
    #   product_id: params["product_id"],
    #   quantity: params["quantity"],
    # )  <-- This hashed out part is my old code.
    if @order.save
      carted_products.update_all(status: "purchased", order_id: @order.id)
      render "show.json.jb"
    else
      render json: { message: "error" }
    end
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render "show.json.jb"
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status = "removed"
    carted_product.save
    render json: { status: "Carted product successfully removed!" }
  end
end
