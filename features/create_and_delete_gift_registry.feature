Feature: Create and delete gift registry

  Scenario: User creates gift registry
    Given I have a Best Buy account
    And   I login with valid credentials
    When  I choose to create a gift registry
    And   I enter registry details
    Then  I successfully create my gift registry

  Scenario: User deletes gift registry after creating it
    Given I am on Registry Management page
    When  I delete gift registry
    Then  I successfully delete my gift registry