class Spike < ApplicationRecord
  has_many :players, dependent: :destroy
  include Common_Processing
  mount_uploaders :images, SpikeImageUploader
  # データの送受信のタイミングでjson ⇄ stringへ変換？
  serialize :images, JSON

  validates :maker, presence: true
  validates :name, presence: true
  validates :price, presence: true
  validates :color, presence: true
  validates :slogan, presence: true
  validates :characteristic, presence: true
  validates :images, presence: true
  enum maker: { Adidas: 0, Nike: 1, Puma: 2, Mizuno: 3, Asics: 4 }
end
