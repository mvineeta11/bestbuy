Feature: create and delete wish list

  Scenario: User successfully creates a wish list and add items to the list
    Given I login with valid credentials into Best Buy website
    When I create a wish list
    Then I successfully create a wish list

  Scenario: User successfully deletes the wish list
    Given I successfully create a wish list
    When  I delete the wish list
    Then  I successfully delete the list

