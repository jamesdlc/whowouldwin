class User < ApplicationRecord
  has_many :discussions
  has_many :comments, :through => :discussions
  has_secure_password
end
