class ContactMailer < ApplicationMailer
	def contact_notification(contact)
	  @contact = contact
	  mail(
	    from: @contact.email,
	    to:   ENV['CONTACT_MAILER_USER_ID'],
	    subject: "Contact message from #{@contact.name}"
	  )
	end
end
