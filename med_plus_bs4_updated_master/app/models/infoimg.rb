class Infoimg < ApplicationRecord
	mount_uploader :infoimg_name, ImageUploader
  belongs_to :post
end
