Feature: Basic CRUD for the laminates section of the DB
  As a user
  So that I can modify the laminates
  I navigate to the laminates path

  Background:
    Given there is a laminate with "lamType" "Stuff"
    And I am at the list of "laminates"

  Scenario: Adding an item to the DB successfully
    When I click "New Laminate"
    And I fill in the laminate form correctly
    And I click "Create Laminate"
    Then I am presented with the new laminate
    And I am greeted with a message that reads "Laminate was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Laminate"
    And I fill in the laminate form incorrectly
    And I click "Create Laminate"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of laminate brings up detailed information of the specific laminate
    When I click "Show"
    Then I should see specific details about the selected laminate
