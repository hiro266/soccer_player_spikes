FactoryBot.define do
  factory :user do
    twiiter_name { "MyString" }
    twitter_email { "MyString" }
    twitter_image { "MyString" }
    role { 1 }
    notification { 1 }
  end
end
