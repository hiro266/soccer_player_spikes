FactoryBot.define do
  factory :user do
    sequence(:twitter_id) { |n| n }
    sequence(:email) { |n| "person#{n}@example.com" }
    notification { 0 }

    trait :twitter do
      screen_name { 'ツイッターユーザー' }
      role { 0 }
    end

    trait :admin do
      screen_name { '管理者' }
      role { 1 }
    end

    trait :guest do
      screen_name { 'ゲストユーザー' }
      role { 2 }
    end
  end
end
