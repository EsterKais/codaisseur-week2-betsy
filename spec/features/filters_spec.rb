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

describe "edible" do
  let(:user) { create :user }

  let!(:product1) { create :product, name: "Dude1", edible: true, user: user }
  let!(:product2) { create :product, name: "Dude2", edible: false, user: user }


  it "shows all products that where edible has the value true" do
    visit edible_pages_path

    expect(page).to have_text(product1.name)
  end

  it "doesn't show products where edible has the value false" do
    visit edible_pages_path

    expect(page).not_to have_text(product2.name)
  end
end

describe "by_race" do
  let(:user) { create :user }

  let!(:product1) { create :product, name: "Dude1", race: "Animal", user: user }
  let!(:product2) { create :product, name: "Dude2", race: "Banimal", user: user }
  let!(:product3) { create :product, name: "Dude2", race: "Canimal", user: user }

  it "shows all products" do
    visit by_race_pages_path

    expect(page).to have_text("Animal")
    expect(page).to have_text("Banimal")
    expect(page).to have_text("Canimal")
  end

  it "shows all products alphabetically ordered by the first letter of their race" do
    visit by_race_pages_path

    expect(Product.first).to eq(product1)
    expect(Product.last).to eq(product3)
  end

end

describe "europe" do
  let(:user) { create :user }

  let!(:product1) { create :product, name: "Dude1", country_origin: "Europe", user: user }
  let!(:product2) { create :product, name: "Dude2", country_origin: "Asia", user: user }
  let!(:product3) { create :product, name: "Dude3", country_origin: "Latino", user: user }
  let!(:product4) { create :product, name: "Dude4", country_origin: "Europe", user: user }

  it "shows all products with origin europe" do
    visit europe_pages_path

    expect(page).to have_text("Dude1")
    expect(page).to have_text(product1.country_origin)
    expect(page).to have_text("Dude4")
    expect(page).to have_text(product4.country_origin)
  end

  it "shows only products with origin europe" do
    visit europe_pages_path

    expect(page).not_to have_text("Dude2")
    expect(page).not_to have_text("Dude3")
  end
end

describe "north-america" do
  let(:user) { create :user }

  let!(:product1) { create :product, name: "Dude1", country_origin: "North-America", user: user }
  let!(:product2) { create :product, name: "Dude2", country_origin: "Asia", user: user }
  let!(:product3) { create :product, name: "Dude3", country_origin: "Latino", user: user }
  let!(:product4) { create :product, name: "Dude4", country_origin: "North-America", user: user }

  it "shows all products with origin north-america" do
    visit north_america_pages_path

    expect(page).to have_text("Dude1")
    expect(page).to have_text(product1.country_origin)
    expect(page).to have_text("Dude4")
    expect(page).to have_text(product4.country_origin)

  end

  it "shows only products with origin north-america" do
    visit north_america_pages_path

    expect(page).not_to have_text("Dude2")
    expect(page).not_to have_text("Dude3")
  end
end
