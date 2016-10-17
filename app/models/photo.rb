class Photo < ApplicationRecord
  belongs_to :product
  mount_uploader :image, ImageUploader

  scope :with_image, -> { where('title IS NOT ? AND TITLE != ?', nil, '') }

end
