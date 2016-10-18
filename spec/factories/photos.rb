FactoryGirl.define do
  factory :photo do
    image               { Faker::Lorem.sentence(40) }
  end
end
