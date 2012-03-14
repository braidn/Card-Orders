Feature: Root Page
  In order to do anything with the app
  As a user
  I need to log in when at the home url

  Background:
    Given I am on the root_path

  Scenario: I will be greeted with a simple login window
    Then I should see a "User" login field
    And a "Password" field
