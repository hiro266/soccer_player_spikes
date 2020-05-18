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

  def save_tags_for_player(position_tags, genre_tags, strength_tags)
  # ----ポジションタグの処理
    current_tags = self.position_tags.pluck(:position) unless self.position_tags.nil?
    old_tags = current_tags - position_tags.split(',')
    new_tags = position_tags.split(',').uniq - current_tags

    old_tags.each do |old_tag|
      self.position_tags.delete PositionTag.find_by(position: old_tag)
    end

    new_tags.each do |new_tag|
      player_tag = PositionTag.find_or_initialize_by(position: new_tag)
      self.position_tags.push(player_tag)
    end
  #----ジャンルタグの処理
    current_tags = self.genre_tags.pluck(:genre) unless self.genre_tags.nil?
    old_tags = current_tags - genre_tags.split(',')
    new_tags = genre_tags.split(',').uniq - current_tags

    old_tags.each do |old_tag|
      self.genre_tags.delete GenreTag.find_by(genre: old_tag)
    end
    new_tags.each do |new_tag|
      player_tag = GenreTag.find_or_initialize_by(genre: new_tag)
      self.genre_tags.push(player_tag)
    end
  #----タイプタグの処理
    current_tags = self.strength_tags.pluck(:strength) unless self.strength_tags.nil?
    old_tags = current_tags - strength_tags.split(',')
    new_tags = strength_tags.split(',').uniq - current_tags

    old_tags.each do |old_tag|
      self.strength_tags.delete StrengthTag.find_by(strength: old_tag)
    end

    new_tags.each do |new_tag|
      player_tag = StrengthTag.find_or_initialize_by(strength: new_tag)
      self.strength_tags.push(player_tag)
    end
  end
end
