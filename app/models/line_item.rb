class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :quantity, presence: true



  def get_line_price
    quantity * product.price    
  end
end
