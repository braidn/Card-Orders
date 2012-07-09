Feature: Basic CRUD for the Encoding Standard section of the DB
  As a user
  So that I can modify the encoding standard
  I navigate to the encodingstandard path

  Background:
    Given there is a encodingstandard with "machineName" "Stuff"
    And I am at the list of "encodingstandards"

  Scenario: Adding an item to the DB successfully
    When I click "New Encoding Standard"
    And I fill in the encoding standard form correctly
    And I click "Create Encoding Standard"
    Then I am presented with the new encoding standard
    And I am greeted with a message that reads "Encoding Standard was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Encoding Standard"
    And I fill in the encoding standard form incorrectly
    And I click "Create Encoding Standard"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of encoding standard brings up detailed information of the specific encoding standard
    When I click "Show"
    Then I should see specific details about the selected encodingstandard
