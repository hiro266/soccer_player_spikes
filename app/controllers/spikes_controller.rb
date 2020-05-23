class SpikesController < ApplicationController
  skip_before_action :require_login, only: %i[show]

  def show
    @spike = Spike.find(params[:id])
    @players = Player.all
  end
end
