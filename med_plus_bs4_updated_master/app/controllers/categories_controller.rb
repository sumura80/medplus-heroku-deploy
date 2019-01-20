class CategoriesController < ApplicationController
	def index	
		@pain_reliefs = Post.where(:category_id => 1)	
		@allergys = Post.where(:category_id => 2)
		@cold_flus = Post.where(:category_id => 3)	
		@digestives = Post.where(:category_id => 4)	
	end

	def pain_relief	
		@posts = Post.all
		@pain_reliefs = Post.where(:category_id => 1)	
	end


	def allergy
		@allergies = Post.where(:category_id => 2)	
	end

	def cold_flu
		@cold_flus = Post.where(:category_id => 3)	
	end

	def digestive
		@digestives = Post.where(:category_id => 3)	
	end
end
