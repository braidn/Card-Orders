Feature: Basic CRUD for the coretype section of the DB
  As a user
  So that I can modify the coretypes
  I navigate to the coretypes path

  Background:
    Given there is a coretype with "material" "Stuff"
    And I am at the list of "coretypes"

  Scenario: Adding an item to the DB successfully
    When I click "New CoreType"
    And I fill in the coretype form correctly
    And I click "Create CoreType"
    Then I am presented with the new coretype
    And I am greeted with a message that reads "Coretype was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New CoreType"
    And I fill in the Coretype form incorrectly
    And I click "Create CoreType"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of CoreType brings up detailed information of the specific coretype
    When I click "Show"
    Then I should see specific details about the selected coretype
