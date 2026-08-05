FactoryBot.define do
  factory :art do
    sequence(:title) { |n| "Title #{n}" }
    description { nil }
    artist_name { "MyText" }
    association :last_editor, factory: :user
    art_created_date { "2024-02-11" }
    created_location { "Created Location" }
    url { "Url" }
    image { nil }
    classification { "Classification" }
    is_published { false }
    location
    artist { nil }
  end
end
