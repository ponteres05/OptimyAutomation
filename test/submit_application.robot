*** Settings ***
Documentation       Test Submit new application
Library             SeleniumLibrary
Test Setup          Run Keywords    Open Website    Login to the Application
Test Teardown      Close Website
Resource            ../page-objects/page-actions/common.robot
Resource            ../page-objects/page-actions/login.robot
Resource            ../page-objects/page-actions/my_user_account.robot
Resource            ../page-objects/page-actions/fillout_forms.robot
Resource            ../page-objects/page-actions/summary.robot

*** Test Cases ***
Submit a new application
    Given I want to submit a new application
    When I complete the forms
    Then I should be able to validate the summary and send the application


