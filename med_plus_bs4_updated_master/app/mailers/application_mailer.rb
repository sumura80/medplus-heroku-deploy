class ApplicationMailer < ActionMailer::Base
  # default from: 'from@example.com'
  default from: ENV['ACTION_MAILER_EMAIL_ADDRESS']
  layout 'mailer'
end
