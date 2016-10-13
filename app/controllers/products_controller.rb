class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update]
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
# this shows only products that belong to the user so we need to think about the homepage product showing
    def index
      @products = current_user.products
    end

    def show
    end

    def new
      @product = current_user.products.build
    end

    def create
      @product = current_user.products.build(product_params)

      if @product.save
        redirect_to @product, notice: "Cow successfully created"
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @product.update(product_params)
        redirect_to @product, notice: "Cow successfully updated"
      else
        render :edit
      end
    end

    private
      def set_product
        @product = Product.find(params[:id])
      end

      def product_params
        params.require(:product).permit(:name, :amount, :race, :description, :image_url, :price, :color, :age, :gender, :edible, :country_origin)
      end
end
