Given(/^My role is Admin$/) do
  @role_admin = FactoryGirl.create :officer_role_admin
end

Given(/^I am a admin$/) do
  @user_admin = FactoryGirl.create :admin
end

When(/^I visit the Homepage of the Accommodation System$/) do
  visit '/'
end

Then(/^I should see a link for sign in$/) do
  expect(page).to have_link('Sign in', href: '/users/sign_in')
end

When(/^I click the link for sign in$/) do
  visit '/users/sign_in'
end

Then(/^I see a form to fill in my account$/) do
  expect(page).to have_selector('form#new_user')
end

When(/^I submit the form$/) do
  fill_in 'Email', with: @user_admin.email
  fill_in 'Password', with: @user_admin.password
  click_button 'Log in'
end

Then(/^I am redirected to the start page$/) do
  visit '/'
end

Then(/^I should see my signed in and a link to sign out$/) do
  # save_and_open_page
  expect(page).to have_content "#{@user_admin.email}"
  expect(page).to have_link('Sign out', href: destroy_user_session_path)
end

################################################################################

Given(/^I am a user$/) do
  @no_role = FactoryGirl.create :officer_no_role
end

Given(/^I want to register account$/) do
  @user_staff = FactoryGirl.build :staff
end

# When(/^I visit the Homepage of the Accommodation System$/) do
#   visit '/'
# end

Then(/^I should see a link for sign up$/) do
  expect(page).to have_link('Sign up', href: '/users/sign_up')
end

When(/^I click the link for sign up$/) do
  visit '/users/sign_up'
end

Then(/^I see a form to fill in my registration detail$/) do
  expect(page).to have_selector('form#new_user')
end

When(/^I submit the registration form$/) do
  fill_in 'Email', with: @user_staff.email
  fill_in 'Password', with: @user_staff.password
  fill_in 'Password confirmation', with: @user_staff.password_confirmation
  click_button 'Sign up'
end

# Then(/^I am redirected to the start page$/) do
#   visit '/'
# end

Then(/^I should see my signed in with my role$/) do
  # save_and_open_page
  expect(page).to have_content "#{@user_staff.email}"
  expect(page).to have_content "#{@no_role.role}"
end

################################################################

When(/^I want to sign in$/) do
  visit '/users/sign_in'
end

Then(/^I see a form to fill in$/) do
  expect(page).to have_selector('form#new_user')
end

When(/^I sign in$/) do
  fill_in 'Email', with: @user_admin.email
  fill_in 'Password', with: @user_admin.password
  click_button 'Log in'
end

Then(/^I should see a link of registered users$/) do
  expect(page).to have_link('List of user', href: administration_userlist_path)
end

When(/^I click the link of registered users$/) do
  visit administration_userlist_path
end

Then(/^I should see all users$/) do
  expect(page).to have_content "#{@user_admin.email}"
  #save_and_open_page
end

Given(/^I have a staff user$/) do
  @user_staff = FactoryGirl.create :staff
end

When(/^I click the link for ban$/) do
  visit administration_banuser_path+'?which_user='+"#{@user_staff.id}"
end

Then(/^I should see a status of user is non\-active$/) do
  expect(page).to have_content "non-active"
end

##################################################################

When(/^I want to see statistics page$/) do
  visit '/'
end

Then(/^I should see a link of statistics page$/) do
  expect(page).to have_link('Statistics', href: administration_statistics_path)
end

When(/^I click the link of statistics page$/) do
  visit administration_statistics_path
end

Then(/^I should see about statistic of user registration$/) do
  expect(page).to have_content "All User"
  expect(page).to have_content "All Role"
  expect(page).to have_content "Total of Admins"
  expect(page).to have_content "Total of Staffs"
  expect(page).to have_content "Total of No role"
  # save_and_open_page
end

#######################
###################### Below :: Housing Workflow Feature steps

Then(/^I am visit the home page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  visit '/'
end

Then(/^I should see the link for Staff page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_link('Staff Page', href: '/home/staff')
end

When(/^I click on the link of Staff page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  find_link('Staff Page', href: '/home/staff').click
end

When(/^I visit the Staff Page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  visit '/home/staff'
end

Then(/^I should see Housingdetails$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_content('Housingdetails')
end

Then(/^I should see the link for New Housingdetail$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_link('New Housingdetail', href: '/housingdetails/new')
end

When(/^I click on the link for New Housingdetail$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  find_link('New Housingdetail', href: '/housingdetails/new').click
end

Then(/^I see a form to fill in the Housing details$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_selector('form#new_housingdetail')
end

Then(/^I fill in the details for a New Housing category$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  @cat2 = FactoryGirl.create :cat2
  fill_in 'Category', with: @cat2.category
  fill_in 'Size', with: @cat2.size
  fill_in 'Rent', with: @cat2.rent
  fill_in 'Details', with: @cat2.details

end

When(/^I submit the form of the New Housing Category$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  click_button 'Create Housingdetail'
end

Then(/^I should see the details of the information just entered$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_content "Category: #{@cat2.category}"
  expect(page).to have_content "Size: #{@cat2.size}"
  expect(page).to have_content "Rent: #{@cat2.rent}"  
  expect(page).to have_content "Details: #{@cat2.details}"
end

Then(/^I can see the Back link to go to Staff page$/) do
  expect(page).to have_link('Back', href: '/home/staff')
end

When(/^I click on the Back link I go to the Staff page$/) do
  #pending
  find_link('Back',href: '/home/staff').click
end

Then(/^I can see the Cat(\d+) Housing detail with Waiting status$/) do |arg1|
  #pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_content "Category Size Rent Details Status"
  expect(page).to have_content "#{@cat2.category} #{@cat2.size} #{@cat2.rent} #{@cat2.details} Waiting"
end

Then(/^I can see Back link on the Staff Page to go to Main Page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_link('Back', href: '/home/index')
end

Then(/^I click on the Back Link on the Staff Page to go to Main Page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  find_link('Back',href: '/home/index').click
end

When(/^I go to the Index page I can see a link to the Suervisor page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I click on the Supervisor Page link to go to Spervisor Page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


Then(/^I should see the details of the New Housing Information$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see a buton to Approve the Information$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click on the button$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the Information should move out of the Manager queue$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I clik on the Main Page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click on the Staff Page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I should see the information with Approved status$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


###################### Above :: Housing Workflow Feature steps
##########################
