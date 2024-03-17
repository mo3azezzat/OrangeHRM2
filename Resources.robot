*** Settings ***
Library   SeleniumLibrary
Variables  Locators.py
Variables  TestData.py

*** Variables ***
${url}     https://opensource-demo.orangehrmlive.com/
${browser}   chrome
   

*** Keywords ***
open login page
      Open Browser   ${url}  ${browser}
      Maximize Browser Window

Add valid username and Password
    Wait Until Page Contains Element    ${Username_Field}  timeout=10s
     Input Text    ${Username_Field}   ${username_value}
     Sleep   3
     Wait Until Page Contains Element    ${Password_Field}  timeout=10s
     Input Password   ${Password_Field}   ${password_value}
     Sleep    3

Add Invalid username and Password
     Wait Until Page Contains Element    ${Username_Field}  timeout=10s
     Input Text    ${Username_Field}   ${Invalid_username}
     Wait Until Page Contains Element    ${Password_Field}  timeout=10s
     Input Password   ${Password_Field}   ${Invalid_password}
     Sleep    3
CLick Login button     
     Click Button  ${loginbutton}
     Sleep    2 

Check the Page title
    Title Should Be    OrangeHRM
    Sleep    2 

Check the Invaled Error message
    Page Should Contain Element    ${Invalid_error}
    Capture Page Screenshot
    
Click on Leave
    Click Element    ${Leave}
    Sleep    2 

Check the Leave Page Header
    Page Should Contain Element    ${Header}
    Sleep    2 

Click on Assign Leave Button
    Wait Until Page Contains Element    ${Assign_Leave}
    Click Element    ${Assign_Leave}
    Sleep    2 
Check the Assign Leave
    Page Should Contain    Assign Leave
    Sleep    2


Add Employee Name
    Wait Until Page Contains Element    ${Emplyee_name_Field}   timeout=10s
    Input Text    ${Emplyee_name_Field}    Nali
    Sleep    5
    Wait Until Page Contains Element    ${Search_results}
    Click Element    ${Search_results}

Add Leave Type
    Click Element    ${Leave_Type_Field}
    Sleep    2
    Wait Until Page Contains Element    ${Leave_Type_DDL}   timeout=10s
    Click Element    ${Leave_Type_DDL}
    Sleep    2

Add Date From To
    Input Text    ${From_Date_Field}    ${From_today}
    Sleep    1
    Click Element    ${To_Date_Field}
    Sleep    2

Click on Assign
   Click Button    ${Submit_btn}
   Sleep    1

Check the Toaster message
    Wait Until Element Is Visible    ${Toaster}   timeout=5s
    Capture Page Screenshot
    Sleep    2
Click on Profile Button
    Click Element    ${Profile}
    Sleep    2

CLick on Logout Button
    Click Element    ${logout_button}
    Sleep    2
Check that user is logged out
      Page Should Contain    Login
      Sleep    3

Close the Browser
    Close Browser
