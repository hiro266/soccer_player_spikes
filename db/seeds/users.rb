User.create!(
  twitter_id: 1,
  email: 'admin@example.com',
  password: 'admin',
  screen_name: '管理者',
  role: 'admin'
)
User.create!(
  twitter_id: 2,
  email: 'guest@example.com',
  password: 'guest',
  screen_name: 'ゲストユーザー',
  role: 'guest'
)
