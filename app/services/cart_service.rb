class ManageCart
  def initialize(params)
    @cart = @session[:cart]
    @id = params[:id]
  end



end
