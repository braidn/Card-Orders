Feature: Basic CRUD for the bindery section of the DB
  As a user
  So that I can modify bindery
  I navigate to the binderies path

  Background:
    Given there is a bindery with opdescription "Stuff"
    And I am at the list of binderies

  Scenario: Adding an item to the DB successfully
    When I click "New Bindery"
    And I fill in the bindery form correctly
    And I click "Create Bindery"
    Then I am presented with the new bindery
    And I am greeted with a message that reads "Bindery was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Bindery"
    And I fill in the bindery form incorrectly
    And I click "Create Bindery"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of bindery brings up detailed information of the specific bindery
    When I click "Show"
    Then I should see specific details about the selected bindery
