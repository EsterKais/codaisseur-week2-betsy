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

end
