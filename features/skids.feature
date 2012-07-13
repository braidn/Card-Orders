Feature: Basic CRUD for the skids section of the DB
  As a user
  So that I can modify the skids
  I navigate to the skids path

  Background:
    Given there is a skids with "skidMat" "Stuff"
    And I am at the list of "skids"

  Scenario: Adding an item to the DB successfully
    When I click "New Skid"
    And I fill in the skids form correctly
    And I click "Create Skid"
    Then I am presented with the new skid
    And I am greeted with a message that reads "Skid was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Skid"
    And I fill in the skids form incorrectly
    And I click "Create Skid"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of skids brings up detailed information of the specific skids
    When I click "Show"
    Then I should see specific details about the selected skids
