Feature: Basic CRUD for the press_standard section of the DB
  As a user
  So that I can modify the press_standard
  I navigate to the press_standard path

  Background:
    Given there is a press_standard with "machineType" "Stuff"
    And I am at the list of "press_standards"

  Scenario: Adding an item to the DB successfully
    When I click "New Press Standard"
    And I fill in the press_standards form correctly
    And I click "Create Press Standard"
    Then I am presented with the new press_standard
    And I am greeted with a message that reads "Press Standard was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Press Standard"
    And I fill in the press_standard form incorrectly
    And I click "Create Press Standard"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of press_standard brings up detailed information of the specific press_standard
    When I click "Show"
    Then I should see specific details about the selected press_standard
