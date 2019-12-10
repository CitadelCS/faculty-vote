Feature: display home page after login
  
  As a user
  so that I can view details of proposals
  I want to see the current open proposals
  
Background: proposals have been added to database

 Given the following proposals exist:
  | name                        | number_yes    | number_no     | number_abstain    | 
  | Hire a new guy              | 5             | 2             |   0               |                   
  | Give team A an A            | 7             | 0             |   0               |                   
  | Give team B an F            | 7             | 0             |   0               |                   
  | Pizza for lunch             | 3             | 4             |   0               |                   
  | Make meetings shorter       | 6             | 1             |   0               |                   
  | Eliminate meetings          | 1             | 6             |   0               |                   
  | Offer more courses          | 3             | 4             |   0               |           
  | Increase salaries           | 7             | 0             |   0               |                   
  | Make tests open-notes       | 2             | 5             |   0               |               
  | Hire new Department head    | 0             | 7             |   0               |    
  
  
  And  I am on the FacultyVote home page
  Then 10 seed proposals should exist
  
Scenario: Homepage works 
  Given I am on the FacultyVote homepage 

 
 #new proposal 
Scenario: create new proposal 
  Given I am on the FacultyVote homepage 
  When I press 'Add new proposal' 
  And I click 'submit'
  Then I should see that the proposal has been added 
 
 #delete proposal 
Scenario: delete all proposals 
  And I am redirected to the homepage 
  Then I should not see any of the proposals
 
 