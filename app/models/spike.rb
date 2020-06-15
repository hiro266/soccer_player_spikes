class Spike < ApplicationRecord
  include Common_Processing
  mount_uploaders :images, SpikeImageUploader
  has_many :players, dependent: :destroy
  has_many :spike_tags, dependent: :destroy
  has_many :tags, through: :spike_tags
  has_many :ground_tags, through: :spike_tags
  has_many :color_tags, through: :spike_tags
  # データの送受信のタイミングでjson ⇄ stringへ変換？
  serialize :images, JSON

  validates :maker,
            :name,
            :price,
            :characteristic,
            :images,
            presence: true
  enum maker: { アディダス: 0, ナイキ: 1, プーマ: 2, ミズノ: 3, アシックス: 4, ニューバランス: 5, アンブロ: 6 }

  def save_tags_for_spike(ground_tag_names, color_tag_names)
    self.ground_tags = ground_tag_names.split(',').map { |name| GroundTag.find_or_create_by(name: name) }
    self.color_tags = color_tag_names.split(',').map { |name| ColorTag.find_or_create_by(name: name) }
  end

  def tax_included
    (self.price * 1.1).round
  end
end
