class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :discussion


  validates :content,
    presence: true,
    length: { minimum: 1, maximum: 800 }
end
