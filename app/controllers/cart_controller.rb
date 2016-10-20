class CartController < ApplicationController
# before_action :authenticate_user!, except: [:index]
  def add
    id = params[:id]
# if cart has already been created, use the existing Cart
      if session[:cart] then
        cart = session[:cart]
      else
        session[:cart] = {}
        cart = session[:cart]
      end

# if the product has already been added to the cart, add another one
      if cart[id] then
        cart[id] = cart[id] + 1
      else
        cart[id] = 1
      end
    redirect_to :action => :index
  end

  def clearCart
    session[:cart] = nil
    redirect_to :action => :index
  end

  def index
# if there is a cart, show the cart with info, otherwise show an empy cart
  if session[:cart]
    @cart = session[:cart]
  else
    @cart = {}
  end
end

end
