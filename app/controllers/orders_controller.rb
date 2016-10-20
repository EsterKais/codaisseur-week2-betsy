class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :submit_cart_items, only: [:new, :create]


  def show
    @order = current_user.orders.find(params[:id])
    @line_items = @order.line_items
  end


  def new
  end

  def create
    @order.save

    redirect_to order_path(@order), notice: "Your order was placed"
  end

private
  def submit_cart_items
    @cart = session[:cart]
    @order = current_user.orders.build
    @cart.each do |product, quantity, price|
      @order.line_items.build(product_id: product, quantity: quantity, item_price: price)
    end
  end

  def line_items_params
    params[:line_items].present? ? params.require(:line_items): []
  end

end
