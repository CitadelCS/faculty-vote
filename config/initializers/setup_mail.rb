ActionMailer::Base.delivery_method = :smtp 
ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com', 
  port: 465, 
  domain: 'gmail.com',
  authentication: 'plain', 
  user_name: 'jthevos@citadel.edu',
  password: 'cisi602!'
}

ActionMailer::Base.raise_delivery_errors = true