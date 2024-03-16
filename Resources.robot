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
    
Click on Leave
    Click Element    ${Leave}
    Sleep    2 

Check the Leave Page Header
    Page Should Contain Element    ${Header}
    Sleep    2 

Click on Apply Button
    Click Element    ${Apply}
    Sleep    2 
Check the Apply page
    Page Should Contain    Leave List
    Sleep    2 
Click on Profile Button
    Click Element    ${Profile}
    Sleep    2

CLick on Logout Button
    Click Element    ${logout_button}
    Sleep    2
Check that user is logged out
      Page Should Contain    Login
      Sleep    5

Close the Browser
    Close Browser


