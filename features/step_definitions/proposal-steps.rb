# Add a declarative step here for populating the DB with proposals.

Given /the following proposals exist/ do |proposals_table|
  proposals_table.hashes.each do |proposal|
    Proposal.create proposal
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that proposal to the database here.
  end
end

Then /(.*) seed proposals should exist/ do | n_seeds |
  Proposal.count.should be n_seeds.to_i
end

# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  #fail "Unimplemented"
  
  #regexp = /.*#{e1}.*#{e2}/
  #expect(page.text).to match(regexp)
  
end

# Make it easier to express checking or unchecking several boxes at once
#  "When I uncheck the following ratings: PG, G, R"
#  "When I check the following ratings: G"

#Part 2 added to
When /I (un)?check the following ratings: (.*)/ do |check, rating_list|
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
  #fail "Unimplemented"
  
  #unless check.eql? 'un'
   # rating_list.split(', ').each { |x| step %{I check "ratings_#{x}"} }
  #else 
    #rating_list.split(', ').each { |x| step %{I uncheck "ratings_#{x}"} }
  #end

end

Then /I should see all the proposals/ do 
  # Make sure that all the movies in the app are visible in the table
  # fail "Unimplemented"
  
  #print page.body.scan(/<tr>/).count 
  #print Movie.all.count
  rows = page.body.scan(/<tr>/).count - 1
  rows.should == Proposal.all.count
end


#Then /I should (not )?see the following proposals: (.*)/ do |not_seen, proposal_list|
  #proposal_list.split(',').each {|x| step %{I should #{not_seen }see "#{x}"}}
 
#end