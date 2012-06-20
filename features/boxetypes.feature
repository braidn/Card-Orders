Feature: Basic CRUD for the boxetypes section of the DB
  As a user
  So that I can modify the boxtypes
  I navigate to the boxtypes path

  Background:
    Given there is a boxtype with boxtype "Stuff"
    And I am at the list of boxtypes

  Scenario: Adding an item to the DB successfully
    When I click "New Box Type"
    And I fill in the boxtype form correctly
    And I click "Create Box Type"
    Then I am presented with the new boxtype
    And I am greeted with a message that reads "Boxtype was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Box Type"
    And I fill in the boxtype form incorrectly
    And I click "Create Box Type"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of Boxtypes brings up detailed information of the specific boxtype
    When I click "Show"
    Then I should see specific details about the selected box type
