require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  describe "association with order" do
    let(:buyer_user) { create :user, email: "guest@user.com" }
    let(:host_user) { create :user, email: "host@user.com" }

    let!(:product) { create :product, user: host_user }
    let!(:order) { create :order, product: product, user: buyer_user }

    it "has bookings" do
      expect(buyer_user.ordered_products).to include(product)
    end
  end

end
