class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_url, success: t('.flash.success')
    else
      flash.now[:danger] = t('.flash.danger')
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :twiiter_name,
      :twiiter_image,
      :email,
      :password,
      :password_confirmation
    )
  end
end
