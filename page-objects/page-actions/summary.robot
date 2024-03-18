*** Settings ***
Documentation       Summary Page Keywords Repository
Library             SeleniumLibrary
Library             String
Resource            ../../data/test-data.robot
Resource            ../page-locators/summary.robot
Resource            ../page-locators/confirmation.robot

*** Keywords ***
I should be able to validate the summary and send the application
    Wait Until Element Is Visible    //div[contains(text(),'First name')]/following-sibling::div//*[contains(text(),'${first_name}')]
    Wait Until Element Is Visible    //div[contains(text(),'Last name')]/following-sibling::div//*[contains(text(),'${last_name}')]
    Wait Until Element Is Visible    //div[contains(text(),'Unit no/House no, Street')]/following-sibling::div//*[contains(text(),'${address}')]
    Wait Until Element Is Visible    //div[contains(text(),'Select postal code')]/following-sibling::div//*[contains(text(),'${postal_code}')]
    Wait Until Element Is Visible    //div[contains(text(),'Country')]/following-sibling::div//*[contains(text(),'${country}')]
    Wait Until Element Is Visible    //div[contains(text(),'Photo')]/following-sibling::div[2]//*[contains(text(),'${photo}')]
    Wait Until Element Is Visible    //div[contains(text(),'Gender')]/following-sibling::div//*[contains(text(),'${gender}')]
    Wait Until Element Is Visible    //div[contains(text(),"Select a role you're applying for")]/following-sibling::div//*[contains(text(),'${role}')]
    Wait Until Element Is Visible    //div[contains(text(),'Familiarity with tools, frameworks and programming languages')]/following-sibling::div//*[contains(text(),'${tool}')]
    Wait Until Element Is Visible    //div[contains(text(),'What is your career objective?')]/following-sibling::div//*[contains(text(),'${career_obj}')]
    Click Element    ${validate_and_send_btn}
    Wait Until Element Is Visible    ${successful_application_confirmation_msg}