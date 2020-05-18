class PlayerStrengthTag < ApplicationRecord
  belongs_to :player
  belongs_to :strength_tag
end
