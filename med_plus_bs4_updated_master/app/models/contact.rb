class Contact < ApplicationRecord
	validates :name, presence: true ,length: { minimum: 3, maximum: 20 }
	validates :email, presence: true
	validates :message, presence: true
end
