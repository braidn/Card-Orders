Feature: Basic CRUD for the materials section of the DB
  As a user
  So that I can modify the materials
  I navigate to the materials path

  Background:
    Given there is a material with "vendor" "Stuff"
    And I am at the list of "materials"

  Scenario: Adding an item to the DB successfully
    When I click "New Material"
    And I fill in the material form correctly
    And I click "Create Material"
    Then I am presented with the new material
    And I am greeted with a message that reads "Material was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Material"
    And I fill in the material form incorrectly
    And I click "Create Material"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of material brings up detailed information of the specific material
    When I click "Show"
    Then I should see specific details about the selected material
