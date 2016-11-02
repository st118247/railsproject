Feature: Housing Workflow
  In order to keep the display the correct Housing information
  As an admin
  I want to check if the Staff generated Housing content appears on Public site anfter Manager approval

  Scenario: Add Information regarding the Category
    Public should see a Staff generated and Manager approved content

    Given I visit the Home page
    And I am an admin
    And I sign in
    Then I should see the link for Staff page
    When I click on the link of Staff page
    When I visit the Staff Page
    Then I should see details of a category 2
    And I should see the link for New Studenthousinginfo
    When I click on the link for Add new housing Information
    Then I see a form to fill in the Hosuing details
    When I submit the form
    Then I should see the details of the information just entered
    And I visit the Main Page
    Then I go to the Manger Page
    And I should see the details of the New Housing Information
    And I should see a buton to Approve the Information
    When I click on the button
    Then the Information should move out of the Manager queue
    Then I clik on the Main Page
    When I click on the Staff Page
    And I should see the information with Approved status

