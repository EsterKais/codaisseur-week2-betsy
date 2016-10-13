class Product < ApplicationRecord
  belongs_to :user

#
#   def is_edible?
#     @product = Product.find(params[:edible])
#     @product.edible = true
#   end
end
#
# product.is_edible?
