Feature: Basic CRUD for the rfid_inlay_category section of the DB
  As a user
  So that I can modify the rfid_inlay_category
  I navigate to the rfid_inlay_category path

  Background:
    Given there is a rfid_inlay_category with "inlayType" "Stuff"
    And I am at the list of "rfid_inlay_categories"

  Scenario: Adding an item to the DB successfully
    When I click "New RFID Inlay Category"
    And I fill in the rfid_inlay_category form correctly
    And I click "Create RFID Inlay Category"
    Then I am presented with the new rfid_inlay_category
    And I am greeted with a message that reads "RFID Inlay Category was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New RFID Inlay Category"
    And I fill in the rfid_inlay_category form incorrectly
    And I click "Create RFID Inlay Category"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of rfid_inlay_category brings up detailed information of the specific rfid_inlay_category
    When I click "Show"
    Then I should see specific details about the selected rfid_inlay_category
