class UserMailer < ActionMailer::Base
  default from: "no-reply@chrisrjones.com"
  default to: "me@chrisrjones.com"

  def welcome_email(user)
  	@user = user
  	@url = 'http://kegcop.chrisrjones.com/login'
  	mail(to: @user.email, subject: 'Welcome to KegCop')
  end

  def new_message(message)
  	@message = message
  	mail(:subject => "[kegcop.chrisrjones.com] #{message.subject}")
  end
end


