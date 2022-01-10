*** Settings ***
Library  Browser
Resource  ../pages/loginPage.resource

*** Test Cases ***
Successful Login
  [Setup]  Open Browser
  [Documentation]  Can successfully log in to the application
  Login With ${UNAME} And ${PWORD}
  [Teardown]  Close Browser