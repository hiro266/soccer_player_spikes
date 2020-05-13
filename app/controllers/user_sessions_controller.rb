class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new guest_login admin_login]

  def new; end

  def destroy
    logout
    redirect_to root_url, success: t('.flash.logout')
  end

  def guest_login
    guest_user = User.find_by!(role: 'guest')
    auto_login(guest_user)
    redirect_to root_path, success: "ゲストユーザーで#{t('.flash.login')}"
  end

  def admin_login
    admin_user = User.find_by!(role: 'admin')
    auto_login(admin_user)
    redirect_to root_path, success: "管理ユーザーで#{t('.flash.login')}"
  end
end
