ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :user_name            => "admin@chilivote.com",
  :password             => "####",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
