class Extraimg < ApplicationRecord
	mount_uploader :extraimg_name, ImageUploader
  belongs_to :post
end
