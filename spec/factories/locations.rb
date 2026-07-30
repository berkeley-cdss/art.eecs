FactoryBot.define do
  factory :location do
    sequence(:name) { |n| "Location #{n}" }
    building_name { "MyString" }
  end
end
