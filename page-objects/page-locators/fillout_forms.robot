#this file contains fillout forms page locators
*** Variables ***
${fillout_forms_header}      //h1[contains(text(),'Fill-out all forms')]
${first_name_inp}            //div[contains(text(),'First name')]/following-sibling::div//input
${last_name_inp}             //div[contains(text(),'Last name')]/following-sibling::div//input
${address_inp}               //div[contains(text(),'Unit no/House no, Street')]/following-sibling::div//textarea
${postal_code_inp}           //div[contains(text(),'Select postal code')]/following-sibling::div[2]//input
${brussel_opt}               //li[@class='ui-menu-item']/a[contains(text(),'1000 - Bruxelles / Brussel')]
${country_field}             //div[contains(text(),'Country')]/following-sibling::div
${upload_btn}                //input[@name='Filedata']
${male_rad_btn}              //div[contains(text(),'Gender')]/following-sibling::div/ul/li[1]/input
${female_rad_btn}            //div[contains(text(),'Gender')]/following-sibling::div/ul/li[2]/input
${pref_not_ans_rad_btn}      //div[contains(text(),'Gender')]/following-sibling::div/ul/li[3]/input
${role_field}                //div[contains(text(),"Select a role you're applying for")]/following-sibling::div
${spreadsheet_chkbox}        //label[contains(text(),'Spreadsheet')]/preceding-sibling::input
${career_obj_txtbox}         //body[@role='textbox']
${next_screen_btn}           //input[@value='Next screen']