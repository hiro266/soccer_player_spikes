class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create guest_login]

  def new; end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to(root_url, success: t('.flash.login'))
    else
      flash.now[:danger] = t('.flash.login_failure')
      render :new
    end
  end

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
