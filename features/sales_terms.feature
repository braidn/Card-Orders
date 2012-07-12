Feature: Basic CRUD for the sales_terms section of the DB
  As a user
  So that I can modify the sales_terms
  I navigate to the sales_terms path

  Background:
    Given there is a sales_terms with "salesTermDescription" "Stuff"
    And I am at the list of "sales_terms"

  Scenario: Adding an item to the DB successfully
    When I click "New Sales Term"
    And I fill in the sales_terms form correctly
    And I click "Create Sales Term"
    Then I am presented with the new sales_terms
    And I am greeted with a message that reads "Sales Term was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Sales Term"
    And I fill in the sales_terms form incorrectly
    And I click "Create Sales Term"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of sales_terms brings up detailed information of the specific sales_terms
    When I click "Show"
    Then I should see specific details about the selected sales_terms
