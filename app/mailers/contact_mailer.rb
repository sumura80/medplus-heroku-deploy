class ContactMailer < ApplicationMailer
	def contact_notification(contact)
	  @contact = contact
	  mail(
	    from: @contact.email,
	    to:   ENV['ACTION_MAILER_EMAIL_ADDRESS'],
	    subject: "Contact message from #{@contact.name}"
	  )
	end
end
