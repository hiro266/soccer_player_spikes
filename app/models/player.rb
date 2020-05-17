class Player < ApplicationRecord
  belongs_to :spike

  validates :name,
            :image,
            presence: true
end
