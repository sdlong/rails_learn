# -*- encoding : utf-8 -*-
# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
RailsLearn::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['Jung'],
  :password       => ENV['2raixdol'],
  :domain         => 'heroku.com',
  :enable_starttls_auto => true
}
