class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #


  #=============================================
  #Message to send when New user Signing up
  def signup_confirmation(user)
  	@user = user

    mail(
    # from: 'codetest1980@gmail.com',
    from: 'lifeabroadjapan@gmail.com',
    to:   @user.email,
    subject: 'Sign Up Confirmation (Med+)'
  )
  end


  #=============================================
  #Message to send when current user changed email address
    def edit_privacy_confirmation(user)
    @user = user

    mail(
    # from: 'codetest1980@gmail.com',
    from: 'lifeabroadjapan@gmail.com',
    to:   @user.email,
    subject: 'Privacy setting was changed (Med+)'
  )
  end






end
