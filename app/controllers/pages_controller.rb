class PagesController < ApplicationController
  def home
    @products = Product.all
# Searching stuff
    @products = Product.search (params[:search]) unless params[:search].blank?
  end

  def affordable
    @products = Product.affordable
    render action: :home
  end

  def edible
    @products = Product.edible
    render action: :home
  end

  def by_race
    @products = Product.by_race
    render action: :home
  end

  def europe
    @products = Product.europe
    render action: :home
  end

  def north_america
    @products = Product.north_america
    render action: :home
  end

  def asia
    @products = Product.asia
    render action: :home
  end

  def latino
    @products = Product.latino
    render action: :home
  end

  def female
    @products = Product.female
    render action: :home
  end

  def male
    @products = Product.male
    render action: :home
  end

  def young
    @products = Product.young
    render action: :home
  end

  def mature
    @products = Product.mature
    render action: :home
  end

  def old
    @products = Product.old
    render action: :home
  end

end
