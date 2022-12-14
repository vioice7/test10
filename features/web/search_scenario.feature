Feature: Search
  In order to find products dinosaurs love
  As a website user
  I need to be able to search for products
  
  Background: 
    Given I am on "/"

  @fixtures
  Scenario Outline: 
    When I fill in "searchTerm" with "<term>"
    And I press "search_submit"
    Then I should see "<result>"
    Examples:
    | term    | result            |
    | Samsung | Samsung Galaxy    |
    | Galaxy  | Samsung           |
    | Xbox    | No products found |
