Feature: Basic CRUD for the commissions section of the DB
  As a user
  So that I can modify the commissions
  I navigate to the commissions path

  Background:
    Given there is a commission with comrate "4"
    And I am at the list of commissions

  Scenario: Adding an item to the DB successfully
    When I click "New Commission"
    And I fill in the commission form correctly
    And I click "Create Commission"
    Then I am presented with the new commission
    And I am greeted with a message that reads "Commission was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Commission"
    And I fill in the Commission form incorrectly
    And I click "Create Commission"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of Commission brings up detailed information of the specific commission
    When I click "Show"
    Then I should see specific details about the selected commission
