class Post < ApplicationRecord
  belongs_to :user

  validates :content, presence: true
  validates :content, length: { maximum: 280 }

  def self.ransackable_attributes(_auth_object = nil)
    ['content']
  end
end
