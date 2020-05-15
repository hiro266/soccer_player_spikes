class Player < ApplicationRecord
  belongs_to :spike

  validates :name, presence: true
  validates :image, presence: true
end
