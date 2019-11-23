Feature: vote yes, no, or abstain on open proposals
  
  As a user
  so that I can participate in the vote
  I want to be able to vote on open proposals 
  
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


Scenario: Vote Yes
    Given I am on the FacultyVote home page
    And I press "Vote" for "Hire a new guy"
    Then I press "Yes"
    Then I am on the FacultyVote home page
    Then the Yes for "Hire a new guy" should be "6"
    
Scenario: Vote No
    Given I am on the FacultyVote home page
    And I press "Vote" for "Hire a new guy"
    Then I press "No"
    Then I am on the FacultyVote home page
    Then the No for "Hire a new guy" should be "3"
  
Scenario: Vote Abstain
    Given I am on the FacultyVote home page
    And I press "Vote" for "Hire a new guy"
    Then I press "Abstain"
    Then I am on the FacultyVote home page
    Then the Abstain for "Hire a new guy" should be "1"
    
    
 
  