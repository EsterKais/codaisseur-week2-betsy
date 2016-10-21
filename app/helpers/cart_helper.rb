module CartHelper


  def add_item
    id = params[:id]
  # if cart has already been created, use the existing Cart
      if session[:cart] then
        @cart = session[:cart]
      else
        session[:cart] = {}
        @cart = session[:cart]
      end

      # if the product has already been added to the cart, add another one
      if @cart[id] then
        @cart[id] = @cart[id] + 1
      else
        @cart[id] = 1
      end

  end

  def subtract_item
    id = params[:id]
  # if cart has already been created, use the existing Cart
      if session[:cart] then
        @cart = session[:cart]
      else
        session[:cart] = {}
        @cart = session[:cart]
      end

  # if the product has already been added to the cart, add another one
      if @cart[id] then
        @cart[id] = @cart[id] - 1
      else
        @cart[id] = 1
      end
  end



end
