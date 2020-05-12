class Admin::BaseController < ApplicationController
  before_action :check_admin

  def check_admin
    unless current_user.admin?
      render file: "#{Rails.root}/public/404.html",
             layout: false, status: 404
    end
  end
end
