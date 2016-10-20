class LineItemsController < ApplicationController
  before_action :authenticate_user!

  def new
    @line_item = current_user.order.line_item.build
  end

  def create
    @line_price = get_product_price * @line_items.quantity
  end

private
  def get_product_price
    @productprice = @line_items.product.price
  end


end
