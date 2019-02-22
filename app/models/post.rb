class Post < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :user
	has_many :comments
	has_many :likes
	#has_many :likes, dependent: :destroy
	#	論理削除のため、dependent: :destroyをコメント会おうtした
	belongs_to :category
	has_many :extraimgs,dependent: :destroy
	has_many :infoimgs, dependent: :destroy
	accepts_nested_attributes_for :extraimgs,allow_destroy: true,reject_if: proc { |attributes| attributes['extraimage'].blank? }
	accepts_nested_attributes_for :extraimgs,allow_destroy: true,reject_if: proc { |attributes| attributes['extraimg_name'].blank? }
	accepts_nested_attributes_for :extraimgs,allow_destroy: true,reject_if: proc { |attributes| attributes['extraimg_description'].blank? }

	accepts_nested_attributes_for :infoimgs,allow_destroy: true,reject_if: proc { |attributes| attributes['infoimage'].blank? }
	accepts_nested_attributes_for :infoimgs,allow_destroy: true,reject_if: proc { |attributes| attributes['infoimg_name'].blank? }
	accepts_nested_attributes_for :infoimgs,allow_destroy: true,reject_if: proc { |attributes| attributes['infoimg_description'].blank? }
	
	validates :category_id, presence: true
	validates :title, presence: { message: "Medicine name can't be blank"}
	validates :image, presence: true
	



# 　	def like_user(user)
#    likes.find_by(user_id: user)
#   end
  #ここで定義されているlike_userというメソッドは、
  #そのユーザがアクセスしている投稿にlikeをしているかどうかというものを判定するもの。
  def like_user(user)
		likes.find_by(user_id: user)
  end

end
