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
  #pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_link('Supervisor Page', href: '/home/supervisor')
end

Then(/^I click on the Supervisor Page link to go to Spervisor Page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  find_link('Supervisor Page', href: '/home/supervisor').click
end


Then(/^I should see the details of the New Housing Information$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_content "Versionid Category Size Rent Details Status"
  expect(page).to have_content "1 #{@cat2.category} #{@cat2.size} #{@cat2.rent} #{@cat2.details} Waiting"
end

Then(/^I should see a buton to Approve the Information$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_selector(:button, 'Approve')
end

When(/^I click on the Approve button$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  find_button('Approve').click
end

Then(/^the Housing Information will not be present in the queue$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_content "Versionid Category Size Rent Details Status"
  expect(page).not_to have_content "1 #{@cat2.category} #{@cat2.size} #{@cat2.rent} #{@cat2.details} Waiting"
end

Then(/^I can see Back link on the Supervisor Page to go to Main Page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_link('Back', href: '/home/index')
end

Then(/^I click the Back link on the Supervisor Page to go to Main Page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  find_link('Back', href: '/home/index').click
end

When(/^on the Main Page I click on the link of Staff page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_link('Staff Page', href: '/home/staff')
end

Then(/^I should see the information with Approved status$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  find_link('Staff Page', href: '/home/staff').click
end

Then(/^I can see a Link to the Puclic Page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_link('Public Page', href: '/home/public')
end

When(/^I click on the Link to the Public Page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  find_link('Public Page', href: '/home/public').click
end

Then(/^I visit the Public Page to verify the Information$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  visit '/home/public'
end

Then(/^I can see the New Housing Information$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_content "Category Size Rent Details"
  expect(page).to have_content "#{@cat2.category} #{@cat2.size} #{@cat2.rent} #{@cat2.details}"
end

###################### Above :: Housing Workflow Feature steps
##########################
