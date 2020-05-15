10.times do
  Spike.create!(
    maker: Faker::Number.between(from: 0, to: 4),
    name: Faker::JapaneseMedia::DragonBall.character,
    price: Faker::Number.between(from: 10000, to: 30000),
    color: Faker::Color.color_name,
    slogan: Faker::WorldCup.team,
    characteristic: Faker::JapaneseMedia::OnePiece.akuma_no_mi,
    remote_images_urls: %w[https://picsum.photos/350/350/?random https://picsum.photos/350/350/?random]
  )
end