class CartController < ApplicationController
# before_action :authenticate_user!, except: [:index]
include CartHelper


  def index
    id = params[:id]
  # if there is a cart, show the cart with info, otherwise show an empy cart
    if session[:cart]
      @cart = session[:cart]
    else
      @cart = {}
    end
  end

  def add
    add_item
    render "cart/index"
  end

  def subtract
    subtract_item
    render "cart/index"
  end


  def clearCart
    session[:cart] = nil
    redirect_to :action => :index
  end



end
