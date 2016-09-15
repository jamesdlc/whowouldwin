class Discussion < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title,
  presence: true,
  length: { minimum: 1, maximum: 100 }

validates :content,
  presence: true,
  length: { minimum: 1, maximum: 1000 }
end
