Feature: User Login
as a User
i want to be able to login to the bbc site

  Scenario: If i log in with invalid credentials i recieve a valid error
    Given I am on the sign in page
    When I input invalid login credentials
    And I click login button
    Then I recieve a valid error
    @test_debug
  Scenario: If i input an incorrect passwork when logging in I recieve a password
    Given I am on the sign in page
    When I input a valid username
    And I input an invalid password
    And I click login
    Then I recieve a valid password error
