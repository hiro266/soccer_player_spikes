class PlayerGenreTag < ApplicationRecord
  belongs_to :player
  belongs_to :genre_tag
end
