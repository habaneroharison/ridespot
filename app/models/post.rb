class Post < ApplicationRecord
  belongs_to :user
  belongs_to :spot
  has_one_attached :image
  
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
end
