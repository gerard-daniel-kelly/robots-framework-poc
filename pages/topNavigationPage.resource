*** Settings ***
Library  Browser
*** Variables ***
${conductIntelNavigation} =  //*[@id="topNavTabItems"]/li[4]

*** Keywords ***
Navigate To Conduct Intelligence
  [Documentation]  Navigates via UI to Conduct Intelligence Page
  Click  ${conductIntelNavigation}