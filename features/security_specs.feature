Feature: Basic CRUD for the security_spec section of the DB
  As a user
  So that I can modify the security_spec
  I navigate to the security_spec path

  Background:
    Given there is a security_spec with "securityComment" "Stuff"
    And I am at the list of "security_specs"

  Scenario: Adding an item to the DB successfully
    When I click "New Security Spec"
    And I fill in the security_spec form correctly
    And I click "Create Security Spec"
    Then I am presented with the new security_spec
    And I am greeted with a message that reads "Security Spec was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Security Spec"
    And I fill in the security_spec form incorrectly
    And I click "Create Security Spec"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of security_spec brings up detailed information of the specific security_spec
    When I click "Show"
    Then I should see specific details about the selected security_spec
