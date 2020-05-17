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

  def save_tags_for_spike(ground_tags)
    current_tags = self.ground_tags.pluck(:ground) unless self.ground_tags.nil?
    old_tags = current_tags - ground_tags.split(',')
    new_tags = ground_tags.split(',').uniq - current_tags

    # 既にあるタグの場合、削除する
    old_tags.each do |old_tag|q
      self.ground_tags.delete GroundTag.find_by(ground: old_tag)
    end

    # 新しいタグの場合、テーブルに追加する
    new_tags.each do |new_tag|
      spike_tag = GroundTag.find_or_initialize_by(ground: new_tag)
      self.ground_tags.push(spike_tag)
    end
  end
end
