*** Settings ***
Documentation       My User Account Page Keywords Repository
Library             SeleniumLibrary
Resource            ../page-locators/my_user_account.robot
Resource            ../page-locators/fillout_forms.robot

*** Keywords ***
I want to submit a new application
    Click Element    ${submit_a_new_application_lnk}
    Wait Until Element Is Visible    ${submit_a_new_application_lnk}
    Click Element    ${submit_a_new_application_lnk}
    Wait Until Element Is Visible    ${fillout_forms_header}


