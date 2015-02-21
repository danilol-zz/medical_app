# -*- encoding: utf-8 -*-
Given(/^I'm a valid user$/) do
  FactoryGirl.create(:user, name: 'jose', email: 'jose@company.com.br', password: "123456")
end

Given(/^I'm on the initial page$/) do
  visit root_path
end

Given(/^I am a logged user$/) do
  FactoryGirl.create(:user, name: 'jose', email: 'jose@company.com.br', password: "123456")
  visit login_path
  fill_in "user_email", with: 'jose@company.com.br'
  fill_in "user_password", with: "123456"
  click_button "Entrar"
end

When(/^I try to login with valid credentials$/) do
  visit login_path
  fill_in "user_email", with: 'jose@company.com.br'
  fill_in "user_password", with: "123456"
  click_button "Entrar"
end

When(/^I try to login with invalid credentials$/) do
  visit login_path
  fill_in "user_email", with: 'invalid@company.com.br'
  fill_in "user_password", with: "123456"
  click_button "Entrar"
end

When(/^I click to logout$/) do
  visit logout_path
end

Then(/^I should be granted access to MedicalApp/) do
  expect(page).to have_content "Cadastros"
end

Then(/^I should not be logged$/) do
  expect(page).to have_content "Faça o login para entrar no sistema, por favor."
end
