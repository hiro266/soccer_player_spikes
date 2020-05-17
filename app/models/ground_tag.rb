class GroundTag < ApplicationRecord
  has_many :spike_ground_tags, dependent: :destroy
  has_many :spikes, through: :spike_ground_tags
  validates :ground, uniqueness: true
  validates :ground, presence: { message: "ホワイトスペースが含まれています" }
end