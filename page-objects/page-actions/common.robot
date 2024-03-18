*** Settings ***
Documentation       Common Keywords Repository
Library             SeleniumLibrary
Resource            ../page-locators/landing_page.robot
Resource            ../../data/config.robot

*** Keywords ***
Open Website
    Open Browser    ${login_url}    browser=${browser}    alias=TestBrowser    options=add_argument("--ignore-certificate-errors"); add_argument("--no-sandbox"); add_argument("--disable-dev-shm-usage"); add_argument("window-size=1920x1080")
    Maximize Browser Window
    Click Element    ${allow_all_cookies_btn}
    Wait Until Element Is Visible    ${access_my_acct_lnk}

Close Website
    Close browser