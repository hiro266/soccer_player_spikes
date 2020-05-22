class Player < ApplicationRecord
  include Common_Processing
  mount_uploader :image, PlayerUploader
  belongs_to :spike
  has_many :player_position_tags, dependent: :destroy
  has_many :player_genre_tags, dependent: :destroy
  has_many :player_strength_tags, dependent: :destroy
  has_many :position_tags, through: :player_position_tags
  has_many :genre_tags, through: :player_genre_tags
  has_many :strength_tags, through: :player_strength_tags

  validates :name,
            :image,
            presence: true

  def save_tags_for_player(position_tag_names, genre_tag_names, strength_tag_names)
    # ----ポジションタグの処理
    self.position_tags = position_tag_names.split(',').map { |name| PositionTag.find_or_create_by(position: name) }
    #----ジャンルタグの処理
    self.genre_tags = genre_tag_names.split(',').map { |name| GenreTag.find_or_create_by(genre: name) }
    #----タイプタグの処理
    self.strength_tags = strength_tag_names.split(',').map { |name| StrengthTag.find_or_create_by(strength: name) }
  end
end
