class Post < ApplicationRecord
  validates :content, presence: true
  validates :content, length: { maximum: 280 }

  def self.ransackable_attributes(auth_object = nil)
    ["content"]
  end
end
