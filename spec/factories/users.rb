FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    name { "MyString" }
    is_admin { false }
    is_moderator { false }
    is_published { false }
    bio { nil }
    url { "MyString" }
    profile_image { nil }
    image_url { "MyString" }
  end
end
