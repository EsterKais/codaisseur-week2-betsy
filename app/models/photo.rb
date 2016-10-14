class Photo < ApplicationRecord
  belongs_to :product

  mount_uploader :image, ImageUploader


  def pick_up
    @photos = Photo.all
  end
end
