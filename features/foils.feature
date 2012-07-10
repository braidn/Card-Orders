Feature: Basic CRUD for the foils section of the DB
  As a user
  So that I can modify the foils
  I navigate to the foils path

  Background:
    Given there is a foil with "foil_type" "Stuff"
    And I am at the list of "foils"

  Scenario: Adding an item to the DB successfully
    When I click "New Foil"
    And I fill in the foil form correctly
    And I click "Create Foil"
    Then I am presented with the new foil
    And I am greeted with a message that reads "Foil was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Foil"
    And I fill in the foil form incorrectly
    And I click "Create Foil"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of foils brings up detailed information of the specific foil
    When I click "Show"
    Then I should see specific details about the selected foil
