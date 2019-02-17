class Extraimg < ApplicationRecord
	mount_uploader :extraimage, ImageUploader
  belongs_to :post
end
