User.create!(
  twitter_id: 1,
  email: 'admin@example.com',
  password: 'admin',
  screen_name: '管理者',
  avatar: open("./app/assets/images/soccer_ball.jpg"),
  role: 'admin'
)
User.create!(
  twitter_id: 2,
  email: 'guest@example.com',
  password: 'guest',
  screen_name: 'ゲストユーザー',
  avatar: open("./app/assets/images/soccer_ball.jpg"),
  role: 'guest'
)
