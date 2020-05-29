class Player < ApplicationRecord
  include Common_Processing
  mount_uploader :image, PlayerUploader
  belongs_to :spike
  has_many :player_tags, dependent: :destroy
  has_many :tags, through: :player_tags
  has_many :position_tags, through: :player_tags
  has_many :genre_tags, through: :player_tags
  has_many :strength_tags, through: :player_tags

  validates :name,
            :image,
            presence: true

  scope :genre_tag_is_all_japan?, -> { joins(:tags).where(tags: { name: '日本代表' } ) }
  scope :genre_tag_is_olympic_japan?, -> { joins(:tags).where(tags: { name: '五輪候補' } ) }
  scope :genre_tag_is_baron_d_or?, -> { joins(:tags).where(tags: { name: 'バロンドール候補' } ) }

  def save_tags_for_player(position_tag_names, genre_tag_names, strength_tag_names)
    # ----ポジションタグの処理
    self.position_tags = position_tag_names.split(',').map { |name| PositionTag.find_or_create_by(name: name) }
    #----ジャンルタグの処理
    self.genre_tags = genre_tag_names.split(',').map { |name| GenreTag.find_or_create_by(name: name) }
    #----タイプタグの処理
    self.strength_tags = strength_tag_names.split(',').map { |name| StrengthTag.find_or_create_by(name: name) }
  end

  def player_wearing_this_spike(spike)
    self.spike_id == spike.id
  end
end
