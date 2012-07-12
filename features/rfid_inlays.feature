Feature: Basic CRUD for the rfid_inlay section of the DB
  As a user
  So that I can modify the rfid_inlay
  I navigate to the rfid_inlay path

  Background:
    Given there is a rfid_inlay with "vendor" "Stuff"
    And I am at the list of "rfid_inlays"

  Scenario: Adding an item to the DB successfully
    When I click "New RFID Inlay"
    And I fill in the rfid_inlay form correctly
    And I click "Create RFID Inlay"
    Then I am presented with the new rfid_inlay
    And I am greeted with a message that reads "RFID Inlay was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New RFID Inlay"
    And I fill in the rfid_inlay form incorrectly
    And I click "Create RFID Inlay"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of rfid_inlay brings up detailed information of the specific rfid_inlay
    When I click "Show"
    Then I should see specific details about the selected rfid_inlay
