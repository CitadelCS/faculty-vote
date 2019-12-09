class FacultyMailer < ApplicationMailer
    def welcome_email(e)
        @email = e
        print "FacultyMailer email = ", @email 
        #@url  = 'https://shielded-scrubland-95680.herokuapp.com/'
        #mail(to: email, subject: 'Vote!').deliver_now
        #mail( from: "jthevos@citadel.edu", to: @email, subject:"Vote, don't be a clown.", body:"Body here" )
        mail( to: @email, subject:"Vote, don't be a clown." )
    end
end
