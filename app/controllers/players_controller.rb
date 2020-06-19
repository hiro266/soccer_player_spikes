class PlayersController < ApplicationController
  skip_before_action :require_login, only: %i[index show]

  def index
    @q = Player.ransack(params[:q]) # 検索オブジェクト作成
    @all_japan_players = @q.result.genre_tag_is_all_japan?.name_asc.page(params[:all_japan_page])
    @olympic_japan_players = @q.result.genre_tag_is_olympic_japan?.name_asc.page(params[:olympic_japan_page])
    @baron_d_or_players = @q.result.genre_tag_is_baron_d_or?.name_asc.page(params[:baron_d_or_page])
  end
end
