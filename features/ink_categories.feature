Feature: Basic CRUD for the ink catagory section of the DB
  As a user
  So that I can modify the ink catagory
  I navigate to the ink catagory path

  Background:
    Given there is a ink catagory with "description" "Stuff"
    And I am at the list of "inkcatagories"

  Scenario: Adding an item to the DB successfully
    When I click "New Ink Category"
    And I fill in the in catagory form correctly
    And I click "Create Ink Category"
    Then I am presented with the new ink catagory
    And I am greeted with a message that reads "Ink Category was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Ink Category"
    And I fill in the inc catagory form incorrectly
    And I click "Create Ink Category"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of ink catagory brings up detailed information of the specific ink catagory
    When I click "Show"
    Then I should see specific details about the selected ink catagory
