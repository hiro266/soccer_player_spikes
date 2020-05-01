class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  validates :twiiter_name, presence: true
  enum role: { general: 0, admin: 1 }
  enum notification: { notification_off: 0, notification_on: 1  }

end
