class User < ActiveRecord::Base
  validates :first_name, presence: true, length: { maximum: 30 }
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :email, presence: true
end
