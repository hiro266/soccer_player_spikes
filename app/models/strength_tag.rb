class StrengthTag < ApplicationRecord
  has_many :player_strength_tags, dependent: :destroy
  has_many :players, through: :player_strength_tags
  validates :strength, uniqueness: true
  validates :strength, presence: { message: "ホワイトスペースが含まれています" }
end
