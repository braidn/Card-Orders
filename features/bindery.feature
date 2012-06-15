Feature: Basic CRUD for the billings section of the DB
  As a user
  So that I can modify billings
  I navigate to the billings path

  Background:
    Given there is a billing with addresstype "Stuff"
    And I am at the list of billings

  Scenario: Adding an item to the DB successfully
    When I click "New Billing"
    And I fill in the billing form correctly
    And I click "Create Billing"
    Then I am presented with the new billing
    And I am greeted with a message that reads "Billing was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Billing"
    And I fill in the billing form incorrectly
    And I click "Create Billing"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of billing brings up detailed information of the specific billing
    When I click "Show"
    Then I should see specific details about the selected billing
