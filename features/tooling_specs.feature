Feature: Basic CRUD for the tooling_spec section of the DB
  As a user
  So that I can modify the tooling_spec
  I navigate to the tooling_spec path

  Background:
    Given there is a tooling_spec with "toolSc" "Stuff"
    And I am at the list of "tooling_specifications"

  Scenario: Adding an item to the DB successfully
    When I click "New Tooling Spec"
    And I fill in the tooling_spec form correctly
    And I click "Create Tooling Spec"
    Then I am presented with the new tooling_spec
    And I am greeted with a message that reads "Tooling Spec was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Tooling Spec"
    And I fill in the tooling_spec form incorrectly
    And I click "Create Tooling Spec"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of tooling_spec brings up detailed information of the specific tooling_spec
    When I click "Show"
    Then I should see specific details about the selected tooling_spec
