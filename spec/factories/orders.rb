FactoryGirl.define do
  factory :order do
    user nil
    order_number 1
    total_price "9.99"
    payment "MyString"
    shipping "MyString"
  end
end
