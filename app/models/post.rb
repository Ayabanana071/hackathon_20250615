class Post < ApplicationRecord
  belongs_to :user

  validates :content, presence: true
  validates :content, length: { maximum: 280 }
end
