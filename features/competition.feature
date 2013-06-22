Feature: Competitions
  As the COO
  i want to manage competions 
  In oder to improve my organization

  Background: here is a team
    Given there is a team called cucumber

  Scenario: Team enters a competition with no questions
    Given I have a Competition with no questions
    When  a team enters the Competition
    Then  I should see a error

  Scenario: Team enters a competition with questions
    Given I have a Competition with questions
    When  a team enters the Competition
    Then  I should not ssee a error
