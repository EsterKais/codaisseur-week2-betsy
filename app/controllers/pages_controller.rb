class PagesController < ApplicationController
  def home
    @products = Product.search(params[:search])
  end
end
