Feature: Basic CRUD for the mat_categories section of the DB
  As a user
  So that I can modify the mat_categories
  I navigate to the mat_categories path

  Background:
    Given there is a mat_categories with "matCategory" "Stuff"
    And I am at the list of "mat_categories"

  Scenario: Adding an item to the DB successfully
    When I click "New Material Category"
    And I fill in the mat_category form correctly
    And I click "Create Material Category"
    Then I am presented with the new mat_category
    And I am greeted with a message that reads "Material Category was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Material Category"
    And I fill in the mat_category form incorrectly
    And I click "Create Material Category"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of mat_category brings up detailed information of the specific mat_category
    When I click "Show"
    Then I should see specific details about the selected mat_category
