class Infoimg < ApplicationRecord
	mount_uploader :infoimage, ImageUploader
  belongs_to :post
end
