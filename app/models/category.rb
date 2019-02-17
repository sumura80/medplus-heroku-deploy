class Category < ApplicationRecord

	mount_uploader :image, ImageUploader

	has_many :posts
	validates :name, presence: true
	validates :blurb, presence: true
	validates :image, presence: true
end
