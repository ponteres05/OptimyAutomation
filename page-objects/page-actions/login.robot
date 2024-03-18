*** Settings ***
Documentation       Login Page Keywords
Library             SeleniumLibrary
Resource            ../page-locators/landing_page.robot
Resource            ../page-locators/login.robot
Resource            ../page-locators/my_user_account.robot
Resource            ../../data/test-data.robot

*** Variables ***
${password}    ${EMPTY}

*** Keywords ***
Login to the Application
    Click Element    ${access_my_acct_lnk}
    Input Text    ${email_inp}    ${email}
    Input Text    ${password_inp}    ${password}
    Click Element    ${login_btn}
    Wait Until Element Is Visible    ${my_projects_header}


