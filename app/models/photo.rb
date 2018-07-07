class Photo < ApplicationRecord
  has_one_attached :image

  validates :caption, presence: true, length: { maximum: 2200 }

end
