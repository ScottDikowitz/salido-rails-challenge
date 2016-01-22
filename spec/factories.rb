require 'faker'

FactoryGirl.define do
  factory :wine do
    name { Faker::Lorem.sentence(3) }
    url  {Faker::Internet.url }
    price_min { Faker::Number.between(1, 19).round(0) }
    price_max { Faker::Number.between(20, 80).round(0) }
    price_retail { Faker::Number.between(10, 60).round(0) }
    api_id {Faker::Number.between(1, 9999999).round(0)}
    kind "Wine"
  end
end
