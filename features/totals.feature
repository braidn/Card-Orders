Feature: Basic CRUD for the totals section of the DB
  As a user
  So that I can modify the totals
  I navigate to the totals path

  Background:
    Given there is a totals with "quantity" "1000"
    And I am at the list of "totals"

  Scenario: Adding an item to the DB successfully
    When I click "New Total"
    And I fill in the totals form correctly
    And I click "Create Total"
    Then I am presented with the new total
    And I am greeted with a message that reads "Total was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Total"
    And I fill in the totals form incorrectly
    And I click "Create Total"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of totals brings up detailed information of the specific totals
    When I click "Show"
    Then I should see specific details about the selected totals
