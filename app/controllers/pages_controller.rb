class PagesController < ApplicationController
  def home
    @products = Product.all
    # @photo = Photo.find(params[:id])
    # @product = @photo.product
    # @product = Product.find(params[:id])
    @photos = Photo.all
  end
end
