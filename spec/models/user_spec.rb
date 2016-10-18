require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

#TESTING ASSOCIATIONS
  #TEST ONE
  describe "user association with product" do
    let(:user) {create :user }
    let!(:product) { create :product, user: user}

    it "user has many products" do
      product1 = user.products.new
      product2 = user.products.new

      expect(user.products).to include(product1)
      expect(user.products).to include(product2)
    end
  end

#TESTING METHODS
  #TEST ONE
  describe "#full_name" do
    it "is composed of first and last name" do
      profile = build(:profile, first_name: "Wouter", last_name: "de Vos")
      expect(profile.full_name).to eq "Wouter de Vos"
    end
  end
  # TEST TWO
  describe "#has_profile?" do
    let(:user) { create :user }
    let(:profile) { create :profile }
    let(:user_w_profile) {create :user, profile: profile }

    it "checks if user has a profile" do
      expect(user.has_profile?).to eq(false)
      expect(user_w_profile.has_profile?).to eq(true)
    end
  end
end
