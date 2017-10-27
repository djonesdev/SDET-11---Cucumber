Feature: user Registration
As a new User
I want to be able to register

  Scenario Outline: If I input incorrect passwork details i will receive the correct error
    Given I am on the bbc sign in page
    And I click the to register
    When i input a date of birth
    And input an email and the password details <password>
    Then I recieve the corresponding error <error>


    Examples:
    | password |                                   error                                        |
    |1234      | Sorry, that password is too short. It needs to be eight characters or more.    |
    |abcdefgh  | Sorry, that password isn't valid. Please include something that isn't a letter.|
