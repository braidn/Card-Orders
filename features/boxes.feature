Feature: Basic CRUD for the boxes section of the DB
  As a user
  So that I can modify the boxes
  I navigate to the box path

  Background:
    Given there is a box with boxtype "Stuff"
    And I am at the list of boxes

  Scenario: Adding an item to the DB successfully
    When I click "New Box"
    And I fill in the box form correctly
    And I click "Create Box"
    Then I am presented with the new box
    And I am greeted with a message that reads "Box was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Box"
    And I fill in the box form incorrectly
    And I click "Create Box"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of Boxes brings up detailed information of the specific box
    When I click "Show"
    Then I should see specific details about the selected box
