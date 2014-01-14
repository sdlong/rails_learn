class WelcomeMailer < ActionMailer::Base
  default from: "from@example.com"

  def hello(user)
    @user = user


    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")
  end
end
