class Player < ApplicationRecord
  include Common_Processing
  mount_uploader :image, PlayerUploader
  belongs_to :spike
  has_many :player_position_tags, dependent: :destroy
  has_many :position_tags, through: :player_position_tags

  validates :name,
            :image,
            presence: true


  # def set_params
  #   if self.params[:position].
  # end

  def save_tags_for_player(tag_list)
    current_tags = self.position_tags.pluck(:position) unless self.position_tags.nil?
    old_tags = current_tags - tag_list.split(',')
    new_tags = tag_list.split(',').uniq - current_tags

    # 既にあるタグの場合、削除する
    old_tags.each do |old_tag|
      self.position_tags.delete PositionTag.find_by(position: old_tag)
    end

    # 新しいタグの場合、テーブルに追加する
    new_tags.each do |new_tag|
      player_tag = PositionTag.find_or_initialize_by(position: new_tag)
      self.position_tags.push(player_tag)
    end
  end
end
