class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :authentications, dependent: :destroy
  accepts_nested_attributes_for :authentications # has_many :authenticationsより下に書く
  validates :email, uniqueness: true
  validates :screen_name, presence: true
  enum role: { general: 0, admin: 1, guest: 2 }
  enum notification: { notification_off: 0, notification_on: 1 }

end
