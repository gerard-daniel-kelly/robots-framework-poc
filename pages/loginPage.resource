*** Settings ***
Library  Browser

*** Variables ***
${unameInput} =  /*[@id="layout-static"]/div[2]/login-view/section/div[2]/div/div/div/form/input[1]
${pwordInput} =  //*[@id="layout-static"]/div[2]/login-view/section/div[2]/div/div/div/form/input[2]
${loginBtn} =  //*[@id="layout-static"]/div[2]/login-view/section/div[2]/div/div/div/form/input[3]

*** Keywords ***
Login with ${LoginUsername} and ${LoginPassword}
  [Documentation]  Navigates to the Login Screen if required and Logs in to system
    ${locationCheck}=   Get Url  *=  /portola/login
    Run Keyword If  ${locationCheck}==${FALSE}  Go To  ${loginUrl}
    Fill Text  xpath=${unameInput}  ${LoginUsername}
    Fill Secret  xpath=${pwordInput}  ${LoginPassword}
    Click  ${loginBtn}