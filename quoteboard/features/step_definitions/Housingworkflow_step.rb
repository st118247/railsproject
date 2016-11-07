Given(/^I visit the Home page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  visit '/'
end

Given(/^I am an admin$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  @admin = FactoryGirl.create :admin2
end

Given(/^I sign in$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  fill_in 'Email', with: @admin.email
  fill_in 'Password', with: @admin.password
  click_button 'Log in'
end

Then(/^I should see the link for Staff page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_link('Staff', href: '/roomlists')
end

When(/^I click on the link of Staff page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  find_link('Staff', href: roomlists_path(@roomlist)).click
  #save_and_open_page
end


#Given(/^I sign in with email "([^"]*)" with password "([^"]*)"$/) do |arg1, arg2|
  #pending # Write code here that turns the phrase above into concrete actions
#  @admin2 = User.new(:email => arg1, :password => arg2)
#end



#Given(/^I am signed in$/) do
  #pending # Write code here that turns the phrase above into concrete actions

#  visit root_path
#  fill_in 'Email', with: @admin.email
#    fill_in 'Password', with: @admin.password
#    click_button 'Log in'
#end

When(/^I visit the Staff Page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  @cat2 = FactoryGirl.create :cat2
  visit '/roomlists'
end

Then(/^I should see details of a category (\d+)$/) do |arg1|
  #pending # Write code here that turns the phrase above into concrete actions

  expect(page).to have_content "Version Category  Roomsize  Rent  Detail  Status"
  expect(page).to have_content "#{@cat2.version}  #{@cat2.category} #{@cat2.roomsize} #{@cat2.rent} #{@cat2.detail} #{@cat2.status}"
  #save_and_open_page
end


And(/^I should see the link for New Studenthousinginfo$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  #expect(page).to have_link('New Studenthousinginfo', href: '/studenthousinginfos/new')
  expect(page).to have_link('New Studenthousinginfo', href: '/studenthousinginfos/new')
end

When(/^I click on the link for Add new housing Information$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  find_link('New Studenthousinginfo', href: '/studenthousinginfos/new').click
end

Then(/^I see a form to fill in the Hosuing details$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_selector('form#new_studenthousinginfo')
end

When(/^I submit the form$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  @cat3 = FactoryGirl.create :cat3
  fill_in 'Category', with: @cat3.category
  fill_in 'Roomsize', with: @cat3.roomsize
  fill_in 'Rent', with: @cat3.rent
  fill_in 'Detail', with: @cat3.detail
  click_button 'Create Studenthousinginfo'
end

Then(/^I should see the details of the information just entered$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  visit @studenthousinginfo
end

Then(/^I visit the Main Page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  find_link('Back', href: '/roomlists').click
  find_link('here', href: '/').click
end

Then(/^I go to the Manger Page$/) do
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
