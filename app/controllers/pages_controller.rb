class PagesController < ApplicationController
  def home
    @products = Product.search(params[:search])
  end


  def affordable
    @products = Product.affordable
    render action: :home
  end

  def edible
    @products = Product.edible
    render action: :home
  end

  def race
    @products = Product.race
    render action: :home
  end

end
