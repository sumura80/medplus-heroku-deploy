class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts  
  has_many :comments
  has_many :likes
  has_many :votes
  mount_uploader :user_image, ImageUploader

  #usernameを確実に入力させるためのvalidates usernameがuniqueであることと、
  #文字数が3から20文字であることを設定出来ます。
  #(case_sensitive: :falseは大文字小文字の区別をしないということ）
  validates :username,
   uniqueness: { case_sensitive: :true },
  length: { minimum: 3, maximum: 20 }


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  
 #↓論理削除をするためのparanoiaの導入
  acts_as_paranoid
  

end
