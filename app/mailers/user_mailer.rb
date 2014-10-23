class UserMailer < ActionMailer::Base
  default to: "scotthale12@gmail.com"

  def contact_us_email(user)
    @user = user
    mail(from: @user.email, subject: 'contact email from website')
  end
end

