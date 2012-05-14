Feature: Root Page
  In order to do anything with the app
  As a user
  I need to log in when at the home url

  Background:
    Given I am on the root_path and not logged in

  Scenario: I will be greeted with a simple login window
    Then I should see a "Email" login field
    And a "Password" field

  Scenario Outline: I will see some helpful links
    Then a link to "<links>"

  Scenarios: Home page links
      |links|
      |New Estimate|
      |Estimates List|
      |New Order|
      |Orders List|
      |Find Order|
