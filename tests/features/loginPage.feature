Feature: Login Page
  As a user
  I want to test login page
  @web  @Examples
  Scenario: Verify username textbox
    When I am on page "Login Page"
    Then I see text "Username" on "userNameLabel"
    Then I see field "userName" enable
  @web  @Examples
  Scenario: Verify Password textbox
    When I am on page "Login Page"
    Then I see text "Password" on "passwordLabel"
    Then I see field "password" enable
  @web @Examples
  Scenario: Verify Submit button
    When I am on page "Login Page"
    Then I see text "Submit" on "submit"
    Then I see field "submit" clickable

    
  ## all test case mentioned above can be achived by @example
  @web  @Examples 
  Scenario Outline:: Login page invalid cases
    When I am on page "Login Page"
    When I type <username> into "userName"
    When I type <password> into "password"
    When I click "submit"
    Then I see text "<messages>" on "notificationMessage"

    Examples:
      | username      | password      | messages                  |
      | student       | Password123   | Logged In Successfully    |
      | student123    | Password123   | Your username is invalid! |
      | student       | Password123@12| Your username is invalid! |
      | student@12    | Password123@12| Your username is invalid! |
      |               | Password123   | Your password is invalid! |
      | student       |               | Your username is invalid! |
      |               |               | Your username is invalid! |






