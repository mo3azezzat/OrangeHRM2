*** Settings ***
Library  SeleniumLibrary
Resource  Resources.robot   

*** Test Cases ***
OrangeHRM task
  open login page
  Add valid username and Password
  CLick Login button 
  Check the Page title
  Click on Leave
  Check the Leave Page Header
  Click on Assign Leave Button
  Check the Assign Leave
  Add Employee Name
  Add Leave Type
  Add Date From To
  Click on Assign
  Check the Toaster message
  Click on Profile Button
  CLick on Logout Button
  Check that user is logged out
  Close the Browser


#another tests
Valid Login
  open login page
  Add valid username and Password
  CLick Login button 
  Check the Page title
  Close the Browser


Invalid Login
  open login page
  Add invalid username and Password
  CLick Login button 
  Check the Invaled Error message
  Close the Browser 