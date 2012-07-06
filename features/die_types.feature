Feature: Basic CRUD for the die_type section of the DB
  As a user
  So that I can modify the die_types
  I navigate to the die_type path

  Background:
    Given there is a die_type with "dieDescription" "Stuff"
    And I am at the list of "dietypes"

  Scenario: Adding an item to the DB successfully
    When I click "New DieType"
    And I fill in the die_type form correctly
    And I click "Create DieType"
    Then I am presented with the new die_type
    And I am greeted with a message that reads "Dietype was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New DieType"
    And I fill in the die_type form incorrectly
    And I click "Create DieType"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of die_type brings up detailed information of the specific die_type
    When I click "Show"
    Then I should see specific details about the selected die_type
