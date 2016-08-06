FactoryGirl.define do
  factory :scraped_tag do
    name { Faker::Lorem.characters(5) }
    page
  end
end
