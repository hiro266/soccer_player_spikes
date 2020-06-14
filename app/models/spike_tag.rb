class SpikeTag < ApplicationRecord
  belongs_to :spike
  belongs_to :tag
  belongs_to :ground_tag, foreign_key: :tag_id, optional: true
  belongs_to :color_tag, foreign_key: :tag_id, optional: true
end
