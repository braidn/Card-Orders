Feature: Basic CRUD for the adhesive section of the DB
  Basic CRUD functions

  Background:
    Given I am at the list of adhesives

  Scenario: Adding an item to the DB successfully
    When I click "New Adhesive"
    And I fill in the form correctly
    And Click "Submit"
    Then the new item is saved successfully
