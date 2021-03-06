class User < ApplicationRecord
  authenticates_with_sorcery!
  include Common_Processing
  mount_uploader :avatar, AvatarUploader

  has_many :authentications, dependent: :destroy
  accepts_nested_attributes_for :authentications # has_many :authenticationsより下に書く
  validates :twitter_id,
            :screen_name,
            presence: true
  validates :twitter_id,
            :email,
            uniqueness: true
  enum role: { general: 0, admin: 1, guest: 2 }
  enum notification: { notification_off: 0, notification_on: 1 }

end
