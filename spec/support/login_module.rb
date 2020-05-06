module LoginModule
  def login(user)
    visit login_path
    click_on 'ゲストログイン'
  end
end