class UserMailer < ActionMailer::Base
  default from: ENV['GMAIL_ADDRESS']

  def signup_email(user)
    @user = user
    @twitter_message = "Welcome to our test server! Have a nice day!!!"

    mail(:to => user.email, :subject => "[Testing]Thanks for signing up!")
  end
end
