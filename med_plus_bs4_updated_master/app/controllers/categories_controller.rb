class CategoriesController < ApplicationController
	before_action :find_category ,only:[:show,:edit,:update,:destroy]
	before_action :authenticate_user!, except:[:index, :show]
	before_action :check_user, except:[:index, :show]
			
	def index
		@categories = Category.all.order("created_at ASC")
	end

	def show
		@posts = Post.where(category_id: [@category.id])
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to @category
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @category.update(category_params)
			flash[:notice] = "category was successfully changed"
			redirect_to root_path
		else
			render	'edit'
		end
	end

	def destroy
		@category.destroy
		redirect_to root_path
	end


	private
	def find_category
		@category = Category.find(params[:id])	
	end

	def category_params
		params.require(:category).permit(:name,:precaution_bold,
			:precaution_red,:precaution_large,:blurb,:image)
	end


	def check_user
		unless current_user.admin?
			flash[:alert] = "Sorry, only Administrator can edit"
			redirect_to root_path
		end
	end


	# def index	
	# 	@pain_reliefs = Post.where(:category_id => 1)	
	# 	@allergys = Post.where(:category_id => 2)
	# 	@cold_flus = Post.where(:category_id => 3)	
	# 	@digestives = Post.where(:category_id => 4)	
	# end

	# def pain_relief	
	# 	@posts = Post.all
	# 	@pain_reliefs = Post.where(:category_id => 1)	
	# end


	# def allergy
	# 	@allergies = Post.where(:category_id => 2)	
	# end

	# def cold_flu
	# 	@cold_flus = Post.where(:category_id => 3)	
	# end

	# def digestive
	# 	@digestives = Post.where(:category_id => 4)	
	# end
end
