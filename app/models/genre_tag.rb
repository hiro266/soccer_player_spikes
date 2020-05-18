class GenreTag < ApplicationRecord
  has_many :player_genre_tags, dependent: :destroy
  has_many :players, through: :player_genre_tags
  validates :genre, uniqueness: true
  validates :genre, presence: { message: "ホワイトスペースが含まれています" }
end
