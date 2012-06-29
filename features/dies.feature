Feature: Basic CRUD for the dies section of the DB
  As a user
  So that I can modify the dies
  I navigate to the dies path

  Background:
    Given there is a die with "die_type" "Stuff"
    And I am at the list of "dies"

  Scenario: Adding an item to the DB successfully
    When I click "New Die"
    And I fill in the dies form correctly
    And I click "Create Die"
    Then I am presented with the new die
    And I am greeted with a message that reads "Die was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Die"
    And I fill in the die form incorrectly
    And I click "Create Die"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of die brings up detailed information of the specific die
    When I click "Show"
    Then I should see specific details about the selected die
