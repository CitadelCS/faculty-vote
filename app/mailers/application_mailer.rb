class ApplicationMailer < ActionMailer::Base
  default from: "jthevos@citadel.edu"
  layout 'mailer'
end

class FacultyMailer < ApplicationMailer
end
