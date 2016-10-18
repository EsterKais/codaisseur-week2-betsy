require 'rails_helper'

RSpec.describe Product, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  describe "association with order" do
    let(:buyer_user) { create :user, email: "guest@user.com" }
    let(:host_user) { create :user, email: "host@user.com" }

    let!(:product) { create :product, user: host_user }
    let!(:order) { create :order, product: product, user: buyer_user }

    it "has buyers" do
      expect(product.buyers).to include(buyer_user)
    end
  end


# __________SCOPES____start____only tested by their behaviour? see feature tests
  # describe ":affordable" do
  #
  #   let(:user) { create :user }
  #
  #   let!(:product1) { create :product, price: 450, user: user }
  #   let!(:product2) { create :product, price: 200, user: user }
  #   let!(:product3) { create :product, price: 400, user: user }
  #
  #
  #   it "shows all products that cost less than 400 euro" do
  #     expect(product1.affordable).to eq(false)
  #     expect(product2.affordable).to eq(true)
  #     expect(product3.affordable).to eq(true)
  #   end
  #
  #   it "doesn't show products that cost more than 400 euro" do
  #     expect(product1.affordable).not_to eq(true)
  #     expect(product2.affordable).not_to eq(false)
  #     expect(product3.affordable).not_to eq(false)
  #   end
  #
  # end

# __________FILTERS____end____


end
