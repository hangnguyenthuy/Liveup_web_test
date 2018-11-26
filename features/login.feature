Feature: Login

  Scenario: Login
    When I visit LoginPage
    And I login with test_non_member
    Then I should be logged in
    When I visit MyAccountPage
    Then I should see liveup_membership_item in MyAccountPage
    When I visit LiveupMembershipPage
    Then I should see LiveupMembershipPage page