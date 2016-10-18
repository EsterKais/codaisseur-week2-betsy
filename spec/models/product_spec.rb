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


  describe "validations" do

    it "is invalid without a race" do
      product = Product.new(race: "")
      product.valid?
      expect(product.errors).to have_key(:race)
    end

    it "is invalid without an amount" do
      product = Product.new(amount: "")
      product.valid?
      expect(product.errors).to have_key(:amount)
    end

    it "is invalid without a price" do
      product = Product.new(price: "")
      product.valid?
      expect(product.errors).to have_key(:price)
    end

    it "is valid without a name" do
      product = Product.new(name: "")
      product.valid?
      expect(product.errors).not_to have_key(:name)
    end

  end


#  Scopes, like validations, are only tested by their behaviour. see feature test
end
