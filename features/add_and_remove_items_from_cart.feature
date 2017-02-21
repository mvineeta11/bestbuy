Feature: add and remove items from cart

  Scenario: display search results for an item
    Given I am on the Best Buy website
    When  I search for items that I would like to buy
    Then  a list of related items is displayed

  Scenario: User successfully adds items to cart
      When I add selected items to cart
      Then items are successfully added to cart

  Scenario: User successfully removes items from cart
    When I remove items from the cart
    Then items are removed successfully

