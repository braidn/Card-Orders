Feature: Basic CRUD for the foil_types section of the DB
  As a user
  So that I can modify the foil_types
  I navigate to the foil_types path

  Background:
    Given there is a foil_type with "foiltype_type" "Stuff"
    And I am at the list of "foiltypes"

  Scenario: Adding an item to the DB successfully
    When I click "New Foil Type"
    And I fill in the foil_type form correctly
    And I click "Create Foil Type"
    Then I am presented with the new foil_type
    And I am greeted with a message that reads "Foil Type was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Foil Typ"
    And I fill in the foil_type form incorrectly
    And I click "Create Foil Type"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of foil_types brings up detailed information of the specific foil_type
    When I click "Show"
    Then I should see specific details about the selected foil_type
