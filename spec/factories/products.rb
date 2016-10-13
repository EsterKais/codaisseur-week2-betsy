FactoryGirl.define do
  factory :product do
    name              "Sebastian"
    amount            2
    race              "White Cow"
    description       { Faker::Lorem.sentence(40) }
    price             { Faker::Commerce.price }
    color             "Pink"
    age               7
    gender            "female"
    edible            true
    country_origin    "Uganda"
  end
end
