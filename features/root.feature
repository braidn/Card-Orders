Feature: Root Page
  In order to do anything with the app
  As a user
  I need to log in when at the home url

  Background:
    Given I am on the root_path

  Scenario: I will be greeted with a simple login window
    Then I should see a "Email" login field
    And a "Password" field
    And a link to "New Estimate"
    And a link to "Estimates List"
    And a link to "New Order"
    And a link to "Orders List"
    And a link to "Find Order"
