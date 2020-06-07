class PlayerTag < ApplicationRecord
  belongs_to :player
  belongs_to :tag
  belongs_to :position_tag, foreign_key: :tag_id, optional: true
  belongs_to :genre_tag, foreign_key: :tag_id, optional: true
  belongs_to :strength_tag, foreign_key: :tag_id, optional: true
end
