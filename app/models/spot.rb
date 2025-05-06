class Spot < ApplicationRecord
  belongs_to :user
  has_many_attached :images 
  has_many :posts, dependent: :destroy

  validates :images, length: { maximum: 3, message: "は最大3枚までです" }
end
