class Memo < ApplicationRecord
  
  validates :title, presence: true, length: { in: 3..30 }
  validates :body, presence: true, length: { in: 3..300 }
  
  validates :category_id, presence: true
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  
  belongs_to :category
end
