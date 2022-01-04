*** Settings ***
Documentation  Login Functionality
Resource  common.robot

*** Test Cases ***
Verify Successful Login
    [Setup]  Open Login Page
    [Teardown]  Teardown
    Login
