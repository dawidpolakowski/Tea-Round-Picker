Feature: Tea Round Picker

  The Tea Round Picker randomly picks which member of the team should make the drinks in order to increase time efficiency.

  Scenario: There are more than 2 participants
    Given I am on the participants page
      And There are more than 2 participants
     When I click pick random participant
     Then I should see the message "[Name] is the winner"
      And The list of drinks to be made

  Scenario: There are less than 2 participants
    Given I am on the participants page
      And There are less than 2 participants in the list
     When I click pick random participant
     Then I should see the message "Not enough participants, add some more"