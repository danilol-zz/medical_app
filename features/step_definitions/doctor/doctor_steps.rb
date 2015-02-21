Given(/^I am on welcome page$/) do
  visit root_path
end

Given(/^I am on doctor form$/) do
  visit new_doctor_path
end

#When(/^I check the option "(.*?)"$/) do |entity|
  #choose("status04")
#end

#Given(/^One doctor with status "(.*?)" exists$/) do |status|
  #FactoryGirl.create(:doctor, status: status.downcase)
#end

#Then(/^I should see "(.*?)", "(.*?)" and "(.*?)"$/) do |str1, str2, str3|
  #expect(page).to have_content str1
  #expect(page).to have_content str2
  #expect(page).to have_content str3
#end

When(/^I click on "(.*?)"$/) do |str|
  click_link str
end

Then(/^I the page should have "(.*?)"$/) do |str|
  expect(page).to have_content str
end

Then(/^I should be redirect to "(.*?)"$/) do |str|
  expect(page.current_path).to eq str
end

When(/^I click to save$/) do
  click_button('Criar Médico')
end

Then(/^I should see all validation errors$/) do
  expect(page).to have_content "Nome não pode ser vazio!"
  expect(page).to have_content "E-mail não pode ser vazio!"
  expect(page).to have_content "CRM não pode ser vazio!"
end

Given(/^I fill all required fields$/) do
  fill_in('doctor_name',       with: 'doctor_name')
  fill_in('doctor_email',      with: 'doctor_email')
  fill_in('doctor_crm_number', with: 'doctor_crm_number')
end

Then(/^I should be redirect to doctor list page$/) do
  expect(page).to have_content "TA001 doctodoctodoctor"
end
