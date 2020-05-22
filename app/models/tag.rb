class Tag < ApplicationRecord
  has_many :player_tags, dependent: :destroy
  has_many :players, through: :player_tags
  validates :name, uniqueness: true
  validates :name, presence: { message: "ホワイトスペースが含まれています" }
end
