*** Settings ***
Documentation       Fillout Forms Page Keywords Repository
Library             SeleniumLibrary
Library             String
Resource            ../../data/test-data.robot
Resource            ../page-locators/fillout_forms.robot
Resource            ../page-locators/summary.robot

*** Variables ***
@{gender}    Male    Female    Prefer not to answer
@{role}    Manual tester    Automation tester    Manual + Automation tester
@{tool}    Spreadsheet    JIRA    Test management tool (any)    SQL, MySQL, MySQLi    Java    Javascript    Python    TestNG    Cucumber    Robot Framework    Cypress

*** Keywords ***
I complete the forms
    ${first_name}    Generate Random String  5-10
    ${last_name}    Generate Random String  5-10
    ${address}    Generate Random String  5-10
    Input Text    ${first_name_inp}    ${first_name}
    Input Text    ${last_name_inp}    ${last_name}
    Input Text    ${address_inp}    ${address}
    Click Element    ${postal_code_inp}
    Input Text    ${postal_code_inp}   ${postal_code}
    Wait Until Element Is Visible    ${brussel_opt}    timeout=10s
    Click Element    ${brussel_opt}
    Click Element    ${country_field}
    Press Keys    ${country_field}    Ger + ENTER
    Choose File    ${upload_btn}    ${CURDIR}\\${photo}
    ${gender}=  Evaluate  random.choice($gender)  random
    Run Keyword If    '${gender}'=='Male'    Click Element    ${male_rad_btn}
    Run Keyword If    '${gender}'=='Female'    Click Element    ${female_rad_btn}
    Run Keyword If    '${gender}'=='Prefer not to answer'    Click Element    ${pref_not_ans_rad_btn}
    ${role}=  Evaluate  random.choice($role)  random
    Click Element    ${role_field}
    Click Element    //option[contains(text(),"${role}")]
    ${tool}=  Evaluate  random.choice($tool)  random
    Select Checkbox    //label[contains(text(),'${tool}')]/preceding-sibling::input
    ${is_checkbox_selected}    Run Keyword And Return Status    Checkbox Should Be Selected    //label[contains(text(),'${tool}')]/preceding-sibling::input
    WHILE    '${is_checkbox_selected}'=='False'
        Select Checkbox    //label[contains(text(),'${tool}')]/preceding-sibling::input
        ${is_checkbox_selected}    Run Keyword And Return Status    Checkbox Should Be Selected    //label[contains(text(),'${tool}')]/preceding-sibling::input
    END
    Select Frame    //iframe
    ${career_obj}    Generate Random String  5-10
    Input Text    ${career_obj_txtbox}    ${career_obj}
    Unselect Frame
    Click Element    ${next_screen_btn}
    Wait Until Element Is Visible    ${summary_header}    timeout=30s
    Set Test Variable    ${first_name}
    Set Test Variable    ${last_name}
    Set Test Variable    ${address}
    Set Test Variable    ${postal_code}
    Set Test Variable    ${country}
    Set Test Variable    ${photo}
    Set Test Variable    ${gender}
    Set Test Variable    ${role}
    Set Test Variable    ${tool}
    Set Test Variable    ${career_obj}
