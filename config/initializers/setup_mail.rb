ActionMailer::Base.smtp_settings = {
  # :port => ENV[''],
  # :address => ENV[''],
  # :user_name => ENV['SENDGRID_USERNAME'],
  # :password => ENV['SENDGRID_PASSWORD'],
  # :authentication => :login,
  # :enable_starttls_auto => true
}
ActionMailer::Base.delivery_method = :smtp 