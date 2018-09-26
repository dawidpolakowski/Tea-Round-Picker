Feature: Admin

To manage the Tea Round Picker and participants a user needs to be able to authenticate with the application.

Scenario: Create account successfully
  Given I enter account details
    | firstName | lastName | email                   | password |
    | Alli      | Liew     | alli.liew@sawdays.co.uk | Pa55word |
   When I click submit
   Then I should see a confirmation message

Scenario: Password recovery
  Given I am on the login page
   When I click reset password
    And I enter an email address
    | email                   |
    | alli.liew@sawdays.co.uk |
   Then I should see a recovery message

Scenario: Login successfully
  Given I complete the login form
    | email                   | password |
    | alli.liew@sawdays.co.uk | Pa55word |
   When I click login
   Then I should see the dashboard

Scenario: Logout successfully
  Given I am logged in
   When I click logout
   Then I should see the login page

Scenario: Wrong details
  Given I complete the login form
    | email                   | password |
    | robot_spammer@gmail.com | 1234     |
  When I click login
  Then I should see an error message

