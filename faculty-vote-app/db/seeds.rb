# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
proposals = [{:name => 'Hire a new guy', :yes => '5', :no => '2', :abstain => '0', :dateofvote => '23-Feb-2019'},
		    {:name => 'Give team A an A', :yes => '7', :no => '0', :abstain => '0', :dateofvote => '21-Mar-2019'},
		    {:name => 'Give team B an F', :yes => '7', :no => '0', :abstain => '0', :dateofvote => '17-Apr-2019'},
		    {:name => 'Pizza for lunch', :yes => '3', :no => '4', :abstain => '0', :dateofvote => '12-May-2019'},
		    {:name => 'Make meetings shorter', :yes => '6', :no => '1', :abstain => '0', :dateofvote => '30-June-2019'},
		    {:name => 'Eliminate meetings', :yes => '1', :no => '6', :abstain => '0', :dateofvote => '31-Jul-2019'},
		    {:name => 'Offer more courses', :yes => '3', :no => '4', :abstain => '0', :dateofvote => '13-Aug-2019'},
		    {:name => 'Increase salaries', :yes => '7', :no => '0', :abstain => '0', :dateofvote => '22-Sep-2019'},
		    {:name => 'Make tests open-notes', :yes => '2', :no => '5', :abstain => '0', :dateofvote => '23-Oct-2019'},
		    {:name => 'Hire new Department head', :yes => '0', :no => '7', :abstain => '0', :dateofvote => '16-Nov-2019'}
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