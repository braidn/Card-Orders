Feature: Basic CRUD for the mag_tapes section of the DB
  As a user
  So that I can modify the mag_tapes
  I navigate to the mag_tapes path

  Background:
    Given there is a mag_tapes with "tapeDescription" "Stuff"
    And I am at the list of "mag_tapes"

  Scenario: Adding an item to the DB successfully
    When I click "New Mag Tape"
    And I fill in the mag_tape form correctly
    And I click "Create Mag Tape"
    Then I am presented with the new mag_tape
    And I am greeted with a message that reads "Mag Tape was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Mag Tape"
    And I fill in the mag_tape form incorrectly
    And I click "Create Mag Tape"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of mag_tape brings up detailed information of the specific mag_tape
    When I click "Show"
    Then I should see specific details about the selected mag_tape
