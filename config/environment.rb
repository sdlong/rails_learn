# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
RailsLearn::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'Jung',
  :password => '2raixdol',
  :domain => 'rorec.herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}