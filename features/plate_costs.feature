Feature: Basic CRUD for the plate_cost section of the DB
  As a user
  So that I can modify the plate_cost
  I navigate to the plate_cost path

  Background:
    Given there is a plate_cost with "processTime" "Stuff"
    And I am at the list of "plate_costs"

  Scenario: Adding an item to the DB successfully
    When I click "New Plate Cost"
    And I fill in the plate_cost form correctly
    And I click "Create Plate Cost"
    Then I am presented with the new plate_cost
    And I am greeted with a message that reads "Plate Cost was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Plate Cost"
    And I fill in the plate_cost form incorrectly
    And I click "Create Plate Cost"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of plate_cost brings up detailed information of the specific plate_cost
    When I click "Show"
    Then I should see specific details about the selected plate_cost
