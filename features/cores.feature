Feature: Basic CRUD for the cores section of the DB
  As a user
  So that I can modify the cores
  I navigate to the cores path

  Background:
    Given there is a cores with generalName "Stuff"
    And I am at the list of cores

  Scenario: Adding an item to the DB successfully
    When I click "New Core"
    And I fill in the core form correctly
    And I click "Create Core"
    Then I am presented with the new core
    And I am greeted with a message that reads "Core was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Core"
    And I fill in the Core form incorrectly
    And I click "Create Core"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of Core brings up detailed information of the specific core
    When I click "Show"
    Then I should see specific details about the selected core
