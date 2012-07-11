Feature: Basic CRUD for the product_format section of the DB
  As a user
  So that I can modify the product_format
  I navigate to the product_format path

  Background:
    Given there is a product_format with "description" "Stuff"
    And I am at the list of "product_formats"

  Scenario: Adding an item to the DB successfully
    When I click "New Product Format"
    And I fill in the product_format form correctly
    And I click "Create Product Format"
    Then I am presented with the new product_format
    And I am greeted with a message that reads "Product Format was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Product Format"
    And I fill in the product_format form incorrectly
    And I click "Create Product Format"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of product_format brings up detailed information of the specific product_format
    When I click "Show"
    Then I should see specific details about the selected product_format
