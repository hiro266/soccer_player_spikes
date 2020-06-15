FactoryBot.define do
  factory :spike do
    maker { rand(0..6) }
    sequence(:name) { |n| "スパイク#{n}" }
    price { rand(10000..30000) }
    sequence(:characteristic) { |n| "商品説明#{n}" }
    images { [Rails.root.join("spec/fixtures/モレリアII_1.jpg").open,
              Rails.root.join("spec/fixtures/モレリアII_3.jpg").open
           ] }
  end
end
