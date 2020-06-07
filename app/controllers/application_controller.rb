class ApplicationController < ActionController::Base
  add_flash_types :danger, :success, :warning, :info
  before_action :require_login

  protect_from_forgery with: :exception

  private

  def not_authenticated
    redirect_to login_url, danger: 'ログインしてください'
  end
end
