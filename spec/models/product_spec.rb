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

    it "deletes associated order" do
      expect { product.destroy }.to change(Order, :count).by(-1)
    end
  end

  describe "association with user" do
    let(:user) {create :user }
    let!(:product) { create :product, user: user}

    it "belongs to a user" do
      product = user.products.new

      expect(product.user).to eq(user)
    end
  end

  describe "association with photos" do
    let(:user) {create :user }
    let!(:product) { create :product, user: user}
    let!(:photo) { create :photo, product: product}

    it "has many photos" do
      expect(product.photos).to include(photo)
    end
  end


#  Scopes, like validations, are only tested by their behaviour. see feature test
end
