class User < ApplicationRecord
  before_save { self.email = email.downcase }

  CODE_VALUES = 0..999
  validates :code, presence: true, inclusion: { in: CODE_VALUES }, uniqueness: true
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 100 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 4 }
end
