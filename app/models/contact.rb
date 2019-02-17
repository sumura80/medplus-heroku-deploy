class Contact < ApplicationRecord
	validates :name, presence: true ,length: { minimum: 3, maximum: 20 }
	validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
	validates :message, presence: true, length: {maximum: 1000}
end
