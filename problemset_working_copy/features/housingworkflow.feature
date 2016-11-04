Feature: Housing Workflow
  In order to keep the display the correct Housing information
  As an admin
  I want to check if the Staff generated Housing information appears on Public site anfter Manager approval

  Scenario: Add Information regarding the Category
    Public should see a Staff generated and Manager approved content

    Given My role is Admin
    And I am a admin
    When I want to sign in
    And I click the link for sign in
    Then I see a form to fill in
    When I sign in
    Then I am visit the home page
    Then I should see the link for Staff page
    When I click on the link of Staff page
    When I visit the Staff Page
    Then I should see Housingdetails
    And I should see the link for New Housingdetail
    When I click on the link for New Housingdetail
    Then I see a form to fill in the Housing details
    And I fill in the details for a New Housing category
    When I submit the form of the New Housing Category
    Then I should see the details of the information just entered
    And I can see the Back link to go to Staff page
    When I click on the Back link I go to the Staff page
    Then I can see the Cat2 Housing detail with Waiting status
    And I can see Back link on the Staff Page to go to Main Page
    And I click on the Back Link on the Staff Page to go to Main Page
    When I go to the Index page I can see a link to the Suervisor page
    Then I click on the Supervisor Page link to go to Spervisor Page
    
    And I should see the details of the New Housing Information
    And I should see a buton to Approve the Information
    When I click on the button
    Then the Information should move out of the Manager queue
    Then I clik on the Main Page
    When I click on the Staff Page
    And I should see the information with Approved status

