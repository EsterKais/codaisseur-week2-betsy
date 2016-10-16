class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :thumbnail do
  eager
  resize_to_fit(300, 300)
  cloudinary_transformation :quality => 80
  end

  version :thumbnail_small do
  eager
  resize_to_fit(200, 100)
  cloudinary_transformation :quality => 80
  end

end
