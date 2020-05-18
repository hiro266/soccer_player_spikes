class PositionTag < ApplicationRecord
  has_many :player_position_tags, dependent: :destroy
  has_many :players, through: :player_position_tags
  validates :position, uniqueness: true
  validates :position, presence: { message: "ホワイトスペースが含まれています" }
end
