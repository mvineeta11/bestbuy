Feature: Login
  
  Scenario: registered user logs in
    Given I have a Best Buy account
    When I login with valid credentials
    Then I successfully login
