class Order < ApplicationRecord
  belongs_to :user
  has_many   :line_items

  before_save :set_totals

  # validates :total_price, presence: true


  # @order.total_price = get_total_price


  def get_total_price
    total = 0
    line_items.each do |li|
      total += li.get_line_price
    end
    total

  end

  private

  def set_totals
    self.total_price = line_items.sum(:line_total)
  end

end
