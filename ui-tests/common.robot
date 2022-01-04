*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Open Login Page
    SeleniumLibrary.Open Browser  https://localhost.ea.test/portola/login  chrome  options=add_argument("--ignore-certificate-errors")

Login
    Input Text  xpath=//*[@id="layout-static"]/div[2]/login-view/section/div[2]/div/div/div/form/input[1]  admin@ea.test
    Input Password  xpath=//*[@id="layout-static"]/div[2]/login-view/section/div[2]/div/div/div/form/input[2]  1234
    Click Element  xpath=//*[@id="layout-static"]/div[2]/login-view/section/div[2]/div/div/div/form/input[3]

Teardown
    Close All Browsers