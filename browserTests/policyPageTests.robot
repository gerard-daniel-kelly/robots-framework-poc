*** Settings ***
Library  Browser
Resource  ../pages/loginPage.resource
Resource  ../pages/policyPage.resource
Resource  ../pages/sidebarNavigationPage.resource
Resource  ../pages/topNavigationPage.resource

Test Setup  Start Browser And Login

*** Keywords ***
Start Browser And Login
  Open Browser
  Login With ${LoginUsername} And ${LoginPassword}

*** Test Cases ***
Verify Policy Page Is Accessible
  Navigate To Conduct Intelligence
  Navigate To Configure A Policy

Verify you can add policy with scenarios
  Navigate To Conduct Intelligence
  Navigate To Configure A Policy
  Select Add Policy Tab


