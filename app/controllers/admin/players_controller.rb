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
    @position_tag_names = params[:player][:position]
    @genre_tag_names = params[:player][:genre]
    @strength_tag_names = params[:player][:strength]
    if @player.save
      @player.save_tags_for_player(@position_tag_names, @genre_tag_names, @strength_tag_names)
      redirect_to admin_players_url, success: t('.flash.create')
    else
      flash.now[:danger] = t('.flash.not_create')
      render :new
    end
  end

  def edit
    @position_tag_names = @player.position_tags.pluck(:name).join(',')
    @genre_tag_names = @player.genre_tags.pluck(:name).join(',')
    @strength_tag_names = @player.strength_tags.pluck(:name).join(',')
  end

  def update
    @position_tag_names = params[:player][:position]
    @genre_tag_names = params[:player][:genre]
    @strength_tag_names = params[:player][:strength]
    if @player.update(player_params)
      @player.save_tags_for_player(@position_tag_names, @genre_tag_names, @strength_tag_names)
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
            .permit(:name, :spike_id)
    end
end
