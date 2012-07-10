Feature: Basic CRUD for the ink pms code section of the DB
  As a user
  So that I can modify the ink pms code
  I navigate to the ink pms code path

  Background:
    Given there is a ink pms with "vendor" "Stuff"
    And I am at the list of "inkpmscodes"

  Scenario: Adding an item to the DB successfully
    When I click "New Ink PMS Code"
    And I fill in the ink pms code form correctly
    And I click "Create Ink PMS Code"
    Then I am presented with the new ink pms code
    And I am greeted with a message that reads "Ink PMS Code was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Ink PMS Code"
    And I fill in the ink pms code form incorrectly
    And I click "Create Ink PMS Code"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of ink pms code brings up detailed information of the specific ink pms code
    When I click "Show"
    Then I should see specific details about the selected ink pms code
