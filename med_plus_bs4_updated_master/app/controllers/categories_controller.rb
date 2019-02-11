class CategoriesController < ApplicationController
	# before_action :find_category ,only:[:show,:edit, :update, :destroy]
	

	def index	
		# @categories = Category.all.order('created_at ASC')
		@pain_reliefs = Post.where(:category_id => 1)	
		@allergys = Post.where(:category_id => 2)
		@cold_flus = Post.where(:category_id => 3)	
		@digestives = Post.where(:category_id => 4)	
	end

	# def show

	# end

	# def new
	# 	@category = Category.new
	# end

	# def create
	# 	@category = Category.new(category_params)
	# 	if @category.save
	# 		redirect_to root_path
	# 	else
	# 		render 'new'
	#   end
 #  end

 #  def edit
 #  end

 #  def update
 #  	 if @category.update(category_params)
 #  		redirect_to root_path
 #  	else
 #  		render 'edit'
 #  	end	
 #  end




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
		@digestives = Post.where(:category_id => 4)	
	end


	# private
	# def find_category
	# 	@category = Category.find(params[:id])
	# end

	# def category_params
	# 	params.require(:category).permit(:name,:precaution_bold, :precaution_red, :precaution_large)
	# end
end
