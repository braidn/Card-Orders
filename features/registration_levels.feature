Feature: Basic CRUD for the registration_level section of the DB
  As a user
  So that I can modify the registration_level
  I navigate to the registration_level path

  Background:
    Given there is a registration_level with "registrationDescription" "Stuff"
    And I am at the list of "registration_levels"

  Scenario: Adding an item to the DB successfully
    When I click "New Registration Level"
    And I fill in the registration_levels form correctly
    And I click "Create Registration Level"
    Then I am presented with the new registration_level
    And I am greeted with a message that reads "Registration Level was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Registration Level"
    And I fill in the registration_levels form incorrectly
    And I click "Create Registration Level"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of registration_level brings up detailed information of the specific registration_levels
    When I click "Show"
    Then I should see specific details about the selected registration_levels
