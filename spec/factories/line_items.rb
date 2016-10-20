FactoryGirl.define do
  factory :line_item do
    product nil
    order nil
    quantity 1
    item_price "9.99"
    line_total "9.99"
  end
end
