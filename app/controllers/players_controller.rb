class PlayersController < ApplicationController
  skip_before_action :require_login, only: %i[index show]

  def index
    @q = Player.ransack(params[:q]) # 検索オブジェクト作成
    @players = @q.result.new_order.page(params[:page]) # 検索結果(何もなければ全件取得)
  end

  def show
  end
end
