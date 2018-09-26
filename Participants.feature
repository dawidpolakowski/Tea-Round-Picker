Feature: Participant

  In order to pick which member of the team is "the winner" and makes the drinks a user should be able to manage participants.

  Scenario: Add a Participant
    Given I am on the participant page
      And I add a participant
      | name    | drink  | milk       | sugar | frequency             |
      | Alli    | Coffee | Flat White | 1     | hourly                |
      | Richard | Tea    | Builders   | 1     | morning and afternoon |
      | Andy    | Coffee | Latte      | 2     | hourly                |
      | Claire  | Tea    | Regular    | 1     | morning only          |
     When I click save
     Then I should see the participant and their drink in the list

  Scenario: Update a Participant
    Given I am on the participant page
      And I edit a participant
      | name    | drink  | milk       | sugar | frequency |
      | Claire  | Coffee | Americano  | 1     | bi-hourly |
     When I click save
     Then I should see the updated participant and their drink in the list

  Scenario: Remove a Participant
    Given I am on the participant page
      And I delete a participant
      | name |
      | Andy |
     When I confirm deletion
     Then I shouldn't see the participant in the list

