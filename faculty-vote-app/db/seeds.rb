# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
proposals = [{:name => 'Hire a new guy', :number_yes => '5', :number_no => '2'},
		    {:name => 'Give team A an A', :number_yes => '7', :number_no => '0'},
		    {:name => 'Give team B an F', :number_yes => '7', :number_no => '0'},
		    {:name => 'Pizza for lunch', :number_yes => '3', :number_no => '4'},
		    {:name => 'Make meetings shorter', :number_yes => '6', :number_no => '1'},
		    {:name => 'Eliminate meetings', :number_yes => '1', :number_no => '6'},
		    {:name => 'Offer more courses', :number_yes => '3', :number_no => '4'},
		    {:name => 'Increase salaries', :number_yes => '7', :number_no => '0'},
		    {:name => 'Make tests open-notes', :number_yes => '2', :number_no => '5'},
		    {:name => 'Hire new Department head', :number_yes => '0', :number_no => '7'}
	 ]
	 
proposals.each do |proposal|
    Proposal.create!(proposal)
end

users = [{:first_name => 'Matthew', :last_name => 'Blair', :email => 'mblair1@citadel.edu'},
        {:first_name => 'Caitlin', :last_name => 'Cabrera', :email => 'ccabrera@citadel.edu'},
        {:first_name => 'John-Anthony', :last_name => 'Thevos', :email => 'thevosjg@g.cofc.edu'},
        {:first_name => 'Jared', :last_name => 'Mathews', :email => 'jmathew1@citadel.edu'},
        {:first_name => 'Alexis', :last_name => 'Jackson', :email => 'jacksonaj1@g.cofc.edu'},
		{:first_name => 'Michael', :last_name => 'Verdicchio', :email => 'mv@citadel.edu'},
		{:first_name => 'Shankar', :last_name => 'Banik', :email => 'baniks1@citadel.edu'}
	 ]
	 
users.each do |user|
    User.create!(user)
end