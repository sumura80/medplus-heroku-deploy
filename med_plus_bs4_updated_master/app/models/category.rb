class Category < ApplicationRecord
<<<<<<< HEAD
	mount_uploader :image, ImageUploader
=======
>>>>>>> category_precautions
	has_many :posts
	validates :name, presence: true
	validates :blurb, presence: true
	validates :image, presence: true
end
