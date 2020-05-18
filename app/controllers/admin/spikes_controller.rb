class Admin::SpikesController < Admin::BaseController
  before_action :set_spike, only: %i[edit update destroy show]
  layout 'admin'

  def index
    @q = Spike.ransack(params[:q]) # 検索オブジェクト作成
    @spikes = @q.result.new_order.page(params[:page]) # 検索結果(何もなければ全件取得)
  end

  def new
    @spike = Spike.new
  end

  def create
    @spike = Spike.new(spike_params)
    @ground_tags = params[:spike][:ground]
    if @spike.save
      @spike.save_tags_for_spike(@ground_tags)
      redirect_to admin_spikes_url, success: t('.flash.create')
    else
      flash.now[:danger] = t('.flash.not_create')
      render :new
    end
  end

  def edit
    @ground_tags = @spike.ground_tags.pluck(:ground).join(',')
  end

  def update
    @ground_tags = params[:spike][:ground]
    if @spike.update(spike_params)
      @spike.save_tags_for_spike(@ground_tags)
      redirect_to admin_spike_url(@spike), success: t('.flash.update')
    else
      flash.now[:danger] = t('.flash.not_update')
      render :new
    end
  end

  def destroy
    @spike.destroy!
    redirect_to admin_spikes_url, success: t('.flash.destroy')
  end

  def show; end

  private

    def set_spike
      @spike = Spike.find(params[:id])
    end

    def spike_params
      params.require(:spike)
            .permit(:maker, :name, :price, :color, :slogan, :characteristic, images: [])
    end
end
