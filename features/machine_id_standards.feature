Feature: Basic CRUD for the machine_id_standard section of the DB
  As a user
  So that I can modify the machine_id_standard
  I navigate to the machine_id_standard path

  Background:
    Given there is a machine_id_standard with "machineType" "Stuff"
    And I am at the list of "machine_id_standards"

  Scenario: Adding an item to the DB successfully
    When I click "New Machine ID Standard"
    And I fill in the machine_id_standard form correctly
    And I click "Create Machine ID Standard"
    Then I am presented with the new machine_id_standard
    And I am greeted with a message that reads "Machine ID Standard was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Machine ID Standard"
    And I fill in the machine_id_standard form incorrectly
    And I click "Create Machine ID Standard"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of machine_id_standard brings up detailed information of the specific machine_id_standard
    When I click "Show"
    Then I should see specific details about the selected machine_id_standard
