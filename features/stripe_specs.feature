Feature: Basic CRUD for the stripe_specs section of the DB
  As a user
  So that I can modify the stripe_specs
  I navigate to the stripe_specs path

  Background:
    Given there is a stripe_specs with "specNumber" "Stuff"
    And I am at the list of "stripe_specifications"

  Scenario: Adding an item to the DB successfully
    When I click "New Stripe Spec"
    And I fill in the stripe_specs form correctly
    And I click "Create Stripe Spec"
    Then I am presented with the new stripe_spec
    And I am greeted with a message that reads "Stripe Spec was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Stripe Spec"
    And I fill in the stripe_spec form incorrectly
    And I click "Create Stripe Spec"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of stripe_spec brings up detailed information of the specific stripe_spec
    When I click "Show"
    Then I should see specific details about the selected stripe_spec
