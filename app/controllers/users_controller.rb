class UsersController < ApplicationController
  before_action :set_user, only: %i[edit update]

  def show; end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to user_url, success: t('.flash.update')
    else
      flash.now[:danger] = t('.flash.not_update')
      render :edit
    end
  end
end

private

  def set_user
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:notification)
  end