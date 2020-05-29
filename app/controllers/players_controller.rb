class PlayersController < ApplicationController
  skip_before_action :require_login, only: %i[index show]

  def index
    @q = Player.ransack(params[:q]) # 検索オブジェクト作成
    @all_japan_players = @q.result.genre_tag_is_all_japan?.page(params[:all_japan])
    @olympic_japan_players = @q.result.genre_tag_is_olympic_japan?.page(params[:olympic_japan])
    @baron_d_or_players = @q.result.genre_tag_is_baron_d_or?.page(params[:baron_d_or])
  end
end
