class Admin::UsersController < Admin::BaseController
  before_action :set_user, only: %i[show edit update destroy]
  layout 'admin'

  def index
    @q = User.ransack(params[:q]) # 検索オブジェクト作成
    @users = @q.result.new_order.page(params[:page]) # 検索結果(何もなければ全件取得)
  end

  def show; end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to admin_user_url(@user), success: t('.flash.update')
    else
      flash.now[:danger] = t('.flash.not_update')
      render :edit
    end
  end

  def destroy
    @user.destroy!
    redirect_to admin_users_url, success: t('.flash.destroy')
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(
        :notification,
        :role
      )
    end
end
