class MessageMailer < ActionMailer::Base
  default to: "scotthale12@gmail.com"

  def new_message(message)
    @message = message
    mail(from: @message.email, subject: 'Contact email from website')
  end
end

