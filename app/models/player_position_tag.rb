class PlayerPositionTag < ApplicationRecord
  belongs_to :player
  belongs_to :position_tag
end
