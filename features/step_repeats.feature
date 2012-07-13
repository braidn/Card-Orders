Feature: Basic CRUD for the step_repeat section of the DB
  As a user
  So that I can modify the step_repeat
  I navigate to the step_repeat path

  Background:
    Given there is a step_repeat with "printDiameter" "Stuff"
    And I am at the list of "step_repeats"

  Scenario: Adding an item to the DB successfully
    When I click "New Step Repeat"
    And I fill in the step_repeat form correctly
    And I click "Create Step Repeat"
    Then I am presented with the new step_repeat
    And I am greeted with a message that reads "Step Repeat was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Step Repeat"
    And I fill in the step_repeat form incorrectly
    And I click "Create Step Repeat"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of step_repeat brings up detailed information of the specific step_repeat
    When I click "Show"
    Then I should see specific details about the selected step_repeat
