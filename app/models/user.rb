class User < ApplicationRecord
  has_many :discussions
  has_secure_password
end
