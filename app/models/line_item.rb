class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
  before_save :set_prices

  validates :quantity, presence: true



  def get_line_price
    quantity * product.price
  end

  private

  def set_prices
    self.item_price = product.price
    self.line_total = product.price * quantity
  end

end
