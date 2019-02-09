class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		if @contact.save
			 redirect_to thanks_path
			# redirect_to thanks_path
			# メール送信
			# InquiryMailer.received_email(@inquiry).deliver
			# 完了画面を表示
  	else
  		render action: 'new' 
  	end
	end


	private
	def contact_params
		params.require(:contact).permit(:name,:email,:message)
	end

end
