Feature: Basic CRUD for the adhesive section of the DB
  Basic CRUD functions

  Background:
    Given I am at the list of adhesives

  Scenario: Adding an item to the DB successfully
    When I click "New Adhesive"
    And I fill in the form correctly
    And I click "Create Adhesive"
    Then I am presented with the new item
    And I am greeted with a message that reads "Adhesive was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Adhesive"
    And I fill in the form incorrectly
    And I click "Create Adhesive"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of adhesives brings up detailed information of the specific adhesive
    And there is an adhesive with description "Stuff"
    When I click "Stuff"
    Then I should see specific details about the selected adhesive
