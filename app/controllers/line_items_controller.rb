class LineItemsController < ApplicationController
  before_action :authenticate_user!

  def new
    @line_item = current_user.order.line_item.build
  end

end
