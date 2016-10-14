class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    @order = current_user.orders.create(order_params)

    redirect_to @order.product, notice: "Thank you for ordering!"
  end

  private

  def order_params
    params.require(:order).permit(:price, :total, :product_id)
  end
end
