class Category < ApplicationRecord
  belongs_to :user
  has_many :memos, dependent: :destroy
end
