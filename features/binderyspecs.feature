Feature: Basic CRUD for the bindery spec section of the DB
  As a user
  So that I can modify the bindery spec
  I navigate to the binderyspec path

  Background:
    Given there is a binderyspec with comment "Stuff"
    And I am at the list of binderyspecs

  Scenario: Adding an item to the DB successfully
    When I click "New BinderySpec"
    And I fill in the binderyspec form correctly
    And I click "Create BinderySpec"
    Then I am presented with the new binderyspec
    And I am greeted with a message that reads "Binderyspec was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New BinderySpec"
    And I fill in the binderyspec form incorrectly
    And I click "Create BinderySpec"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of BinderySpec brings up detailed information of the specific binderyspec
    When I click "Show"
    Then I should see specific details about the selected binderyspec
