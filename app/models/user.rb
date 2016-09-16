class User < ApplicationRecord
  has_many :discussions
  has_many :comments
  has_secure_password


  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email,
    presence: true,
    format: { with: EMAIL_REGEX},
    uniqueness: true,
    length: { maximum: 50 }

  validates :user_name,
    presence: true,
    uniqueness: true,
    length: { minimum: 1, maximum: 50 }

  validates :first_name, :last_name,
    presence: true,
    length: { minimum: 1, maximum: 50 }

end
