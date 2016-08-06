FactoryGirl.define do
  factory :scraped_attribute do
    name { Faker::Lorem.characters(5) }
    value { Faker::Lorem.characters(5) }
    scraped_tag
  end
end
