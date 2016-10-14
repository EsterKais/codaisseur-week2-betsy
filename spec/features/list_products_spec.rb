require 'rails_helper'

describe "Current user viewing the list of cows" do
  before { login_as user }

  let(:user) { create :user, email: "current@user.com" }
  let(:another_user) { create :user, email: "another@user.com" }

  let!(:product1) { create :product, race: "Listing Name 1", user: user }
  let!(:product2) { create :product, race: "Listing Name 2", user: user }
  let!(:product3) { create :product, race: "Listing Name 3", user: user }
  let!(:product4) { create :product, race: "Listing Name 4", user: user }
  let!(:product5) { create :product, race: "Another users cow", user: another_user }

  it "shows all his rooms" do
    visit products_path

    expect(page).to have_text("Listing Name 1")
    expect(page).to have_text("Listing Name 2")
    expect(page).to have_text("Listing Name 3")
  end

  it "does not show other users cows" do
    visit products_path

    expect(page).not_to have_text("Another users cow")
  end
end
