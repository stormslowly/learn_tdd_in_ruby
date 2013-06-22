Feature: Competitions
  As the COO
  i want to manage competions 
  In oder to improve my organization

  Scenario: Team enters a competition with no questions
    Given I have a Competition without questions
    When  a team enters the Competition
    Then  I should see a error

