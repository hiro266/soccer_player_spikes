FactoryBot.define do
  factory :player do
    sequence(:name) { |n| "プレイヤー#{n}" }
    association :spike
  end
end
