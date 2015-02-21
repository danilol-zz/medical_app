Feature: Doctor create
  In order to create doctors
  As an user
  I want it to work properly

  Background:
    Given I am a logged user
      And I am on welcome page

  Scenario: Access to doctor list
    When I click on "Médicos"
    Then I the page should have "Listing doctors"
     And I the page should have "New Doctor"

  Scenario: Access to doctor form
    When I click on "Médicos"
     And I click on "New Doctor"
    Then I the page should have "New doctor"

  Scenario: Failed to create doctor due validations
    Given I am on doctor form
     When I click to save
     Then I should see all validation errors

  Scenario: Succesfully create doctor
    Given I am on doctor form
      And I fill all required fields
     When I click to save
     Then I should be redirect to "/doctors"
      And I the page should have "Listing doctors"
      And I the page should have "New Doctor"
