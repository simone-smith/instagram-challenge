# frozen_string_literal: true

class Photo < ApplicationRecord
  validates :user_id, presence: true
  validates :image, presence: true
  validates :caption, presence: true, length: { maximum: 2200 }
  has_one_attached :image
  belongs_to :user
end
