class Order < ApplicationRecord
  belongs_to :user
  has_many   :line_items

  # validates :total_price, presence: true


  def get_total_price
    total = 0
    line_items.each do |li|
      total += li.get_line_price
    end
    total
  end
end
