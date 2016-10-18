require 'rails_helper'



describe "affordable" do

  let(:user) { create :user }

  let!(:product1) { create :product, name: "Dude1", price: 450, user: user }
  let!(:product2) { create :product, name: "Dude2", price: 200, user: user }
  let!(:product3) { create :product, name: "Dude3", price: 400, user: user }


  it "shows all products that cost less than 400 euro" do
    visit affordable_pages_path

    expect(page).to have_text(product2.name)
    expect(page).to have_text(product3.name)

  end

  it "doesn't show products that cost more than 400 euro" do

    visit affordable_pages_path

    expect(page).not_to have_text(product1.name)

  end

end
