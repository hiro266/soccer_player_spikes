class Admin::PlayersController < Admin::BaseController
  before_action :set_player, only: %i[edit update destroy show]
  before_action :set_spike_all, only: %i[new edit]
  before_action :set_spike, only: %i[edit show]
  layout 'admin'

  def index
    @q = Player.ransack(params[:q]) # 検索オブジェクト作成
    @players = @q.result.new_order.page(params[:page]) # 検索結果(何もなければ全件取得)
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    @position_tags = self.params[:player][:position]
    @genre_tags = self.params[:player][:genre]
    if @player.save
      @player.save_position_tags_for_player(@position_tags)
      @player.save_genre_tags_for_player(@genre_tags)
      redirect_to admin_players_url, success: t('.flash.create')
    else
      flash.now[:danger] = t('.flash.not_create')
      render :new
    end
  end

  def edit; end

  def update
    if @player.update(player_params)
      redirect_to admin_player_url(@player), success: t('.flash.update')
    else
      flash.now[:danger] = t('.flash.not_update')
      render :new
    end
  end

  def destroy
    @player.destroy!
    redirect_to admin_players_url, success: t('.flash.destroy')
  end

  def show; end

  private

    def set_player
      @player = Player.find(params[:id])
    end

    def set_spike_all
      @spikes = Spike.all
    end

    def set_spike
      @spike = Spike.find(@player.spike.id)
    end

    def player_params
      params.require(:player)
            .permit(:name, :image, :spike_id)
    end
end
