class Spike < ApplicationRecord
  include Common_Processing
  mount_uploaders :images, SpikeImageUploader
  has_many :players, dependent: :destroy
  has_many :spike_ground_tags, dependent: :destroy
  has_many :ground_tags, through: :spike_ground_tags
  # データの送受信のタイミングでjson ⇄ stringへ変換？
  serialize :images, JSON

  validates :maker,
            :name,
            :price,
            :color,
            :slogan,
            :characteristic,
            :images,
            presence: true
  enum maker: { Adidas: 0, Nike: 1, Puma: 2, Mizuno: 3, Asics: 4 }

  def save_tags_for_spike(ground_tag_names)
    self.ground_tags = ground_tag_names.split(',').map { |name| GroundTag.find_or_create_by(ground: name) }
  end
end
