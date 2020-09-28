Feature: Login Functionality of Wikipedia
         Add Description goes from Here

  Background: To Open Webpage
    Given   User open the wikipedia application
    And     User clicks on Login link

  @Sanity
  Scenario: Validate User is able to login with valid data
    When    User enters username as "drongarg"
    And     User enters password as "Yeknod@123"
    And     User clicks on login button
    Then    User should logged in and able to see logout button

  Scenario: Validate User is not able to login with invalid data
    When    User enters username as "dronga"
    And     User enters password as "Yeknod@1234"
    And     User clicks on login button
    Then    User should not be able to login and gives error message

 @Smoke
  Scenario Outline: Validate User is not able to login with multiple data with example
    When    User enters username as "<username>"
    And     User enters password as "<password>"
    And     User clicks on login button
    Then    User should not be able to login and gives error message

  Examples:
    |username|password |
    | dg     |  dgggg  |
    | Mike   |  Mike12 |


