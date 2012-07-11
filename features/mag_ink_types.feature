Feature: Basic CRUD for the mag_ink_type section of the DB
  As a user
  So that I can modify the mag_ink_type
  I navigate to the mag_ink_type path

  Background:
    Given there is a mag_ink_type with "inkType" "Stuff"
    And I am at the list of "mag_ink_types"

  Scenario: Adding an item to the DB successfully
    When I click "New Mag Ink Type"
    And I fill in the mag_ink_type form correctly
    And I click "Create Mag Ink Type"
    Then I am presented with the new mag_ink_type
    And I am greeted with a message that reads "Mag Ink Type was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Mag Ink Type"
    And I fill in the mag_ink_type form incorrectly
    And I click "Create Mag Ink Type"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of mag_ink_type brings up detailed information of the specific mag_ink_type
    When I click "Show"
    Then I should see specific details about the selected mag_ink_type
