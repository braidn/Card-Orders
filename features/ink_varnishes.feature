Feature: Basic CRUD for the ink_varnish section of the DB
  As a user
  So that I can modify the ink_varnish
  I navigate to the ink_varnish path

  Background:
    Given there is a ink_varnish with "vendor" "Stuff"
    And I am at the list of "ink_varnishes"

  Scenario: Adding an item to the DB successfully
    When I click "New Ink Varnish"
    And I fill in the ink_varnish form correctly
    And I click "Create Ink Varnish"
    Then I am presented with the new ink_varnish
    And I am greeted with a message that reads "Ink Varnish was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Ink Varnish"
    And I fill in the ink_varnish form incorrectly
    And I click "Create Ink Varnish"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of ink_varnish brings up detailed information of the specific ink_varnish
    When I click "Show"
    Then I should see specific details about the selected ink_varnish
