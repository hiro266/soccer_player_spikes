class ApplicationController < ActionController::Base
  add_flash_types :danger, :success, :warning
  before_action :require_login

  protect_from_forgery with: :exception

  protected

  def not_authenticated
    redirect_to login_url, danger: t('.flash.please_login')
  end
end
