*** Settings ***
Library  Browser

*** Variables ***
${configureMenuOption} = //*[@id="widget-sidebar"]/nav/ul/li[5]

## Configure Options
${policyOption} = //*[@id="widget-sidebar"]/nav/ul/li[5]/ul/li[4]

*** Keywords ***
Navigate To Configure A Policy
  [Documentation]  Navigates To The Policy Page via the Configure menu
  Hover  ${configureMenuOption}
  Click  ${policyOption}