Feature: Basic CRUD for the adhesive section of the DB
  As a user
  So that I can modify adhesives
  I navigate to the adhesives path

  Background:
    Given there is an adhesive with description "Stuff"
    And I am at the list of adhesives

  Scenario: Adding an item to the DB successfully
    When I click "New Adhesive"
    And I fill in the form correctly
    And I click "Create Adhesive"
    Then I am presented with the new adhesive
    And I am greeted with a message that reads "Adhesive was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Adhesive"
    And I fill in the form incorrectly
    And I click "Create Adhesive"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of adhesive brings up detailed information of the specific adhesive
    When I click "Stuff"
    Then I should see specific details about the selected adhesive
