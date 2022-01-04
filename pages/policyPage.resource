*** Settings ***
Library  Browser

*** Variables ***
${addPolicyTab} = //*[@id="layout-static"]/div[2]/supervision/div/div/section/ng-component/div/div/div/panel/div/div/div[1]/div/ul/li[2]

*** Keywords ***
Select Add Policy Tab
  [Documentation]  Select The Add Policy Tab
  Click  ${addPolicyTab}