Feature: Create account

  Scenario: User successfully creates an account
    Given I am on the Best Buy website
    And   I don't have an account
    When  I proffer valid details
    Then  I successfully create a Best Buy account