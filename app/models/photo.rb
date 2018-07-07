class Photo < ApplicationRecord
  has_one_attached :image

  validates :image, presence: true
  validates :caption, presence: true, length: { maximum: 2200 }

end
