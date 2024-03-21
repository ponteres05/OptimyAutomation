*** Settings ***
Documentation       Summary Page Keywords Repository
Library             SeleniumLibrary
Resource            ../../data/test-data.robot
Resource            ../page-locators/summary.robot
Resource            ../page-locators/confirmation.robot

*** Keywords ***
I should be able to validate the summary and send the application
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //div[contains(text(),'First name')]/following-sibling::div//*[contains(text(),'${first_name}')]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //div[contains(text(),'Last name')]/following-sibling::div//*[contains(text(),'${last_name}')]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //div[contains(text(),'Unit no/House no, Street')]/following-sibling::div//*[contains(text(),'${address}')]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //div[contains(text(),'Select postal code')]/following-sibling::div//*[contains(text(),'${postal_code}')]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //div[contains(text(),'Country')]/following-sibling::div//*[contains(text(),'${country}')]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //div[contains(text(),'Photo')]/following-sibling::div[2]//*[contains(text(),'${photo}')]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //div[contains(text(),'Gender')]/following-sibling::div//*[contains(text(),'${gender}')]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //div[contains(text(),"Select a role you're applying for")]/following-sibling::div//*[contains(text(),'${role}')]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //div[contains(text(),'Familiarity with tools, frameworks and programming languages')]/following-sibling::div//*[contains(text(),'${tool}')]
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    //div[contains(text(),'What is your career objective?')]/following-sibling::div//*[contains(text(),'${career_obj}')]
    Click Element    ${validate_and_send_btn}
    Wait Until Element Is Visible    ${successful_application_confirmation_msg}
