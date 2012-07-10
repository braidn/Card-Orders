Feature: Basic CRUD for the ink signature section of the DB
  As a user
  So that I can modify the ink signature
  I navigate to the ink signature path

  Background:
    Given there is a ink signature with "vendor" "Stuff"
    And I am at the list of "inksignatures"

  Scenario: Adding an item to the DB successfully
    When I click "New Ink Signature"
    And I fill in the ink signature form correctly
    And I click "Create Ink Signature"
    Then I am presented with the new ink signature
    And I am greeted with a message that reads "Ink Signature was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Ink Signature"
    And I fill in the ink signature form incorrectly
    And I click "Create Ink Signature"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of ink signature brings up detailed information of the specific ink signature
    When I click "Show"
    Then I should see specific details about the selected ink signature
