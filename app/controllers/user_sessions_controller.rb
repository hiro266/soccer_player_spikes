class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new guest_login]

  def new; end

  def destroy
    logout
    redirect_to root_url, success: t('.flash.logout')
  end

  def guest_login
    guest_user = User.find_by!(role: 'guest')
    auto_login(guest_user)
    redirect_to root_path, notice: 'ログインしました'
  end
end
