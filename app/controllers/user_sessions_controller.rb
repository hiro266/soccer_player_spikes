class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

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
end
