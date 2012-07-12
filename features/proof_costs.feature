Feature: Basic CRUD for the proof_cost section of the DB
  As a user
  So that I can modify the proof_cost
  I navigate to the proof_cost path

  Background:
    Given there is a proof_cost with "proofDescription" "Stuff"
    And I am at the list of "proof_costs"

  Scenario: Adding an item to the DB successfully
    When I click "New Proof Cost"
    And I fill in the proof_cost form correctly
    And I click "Create Proof Cost"
    Then I am presented with the new proof_cost
    And I am greeted with a message that reads "Proof Cost was successfully created"

  Scenario: Adding an item with the incorrect info will pass an error on creation
    When I click "New Proof Cost"
    And I fill in the proof_cost form incorrectly
    And I click "Create Proof Cost"
    Then the errors are highlighted

  Scenario: Clicking on an item in the list of proof_cost brings up detailed information of the specific proof_cost
    When I click "Show"
    Then I should see specific details about the selected proof_cost
