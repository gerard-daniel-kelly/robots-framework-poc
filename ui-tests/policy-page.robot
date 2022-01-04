*** Settings ***
Documentation  Policy Functionality
Resource  common.robot

*** Variables ***

*** Test Cases ***
Verify policy page is accessible
    [Setup]  Open Login Page
    [Teardown]  Teardown
    Login
    Go To Policy Page

Verify you can add policy with scenarios
    [Setup]  Open Login Page
    [Teardown]  Teardown
    Login
    Go To Policy Page
    Select Add Policy Tab

*** Keywords ***
Go To Policy Page
    sleep  3s
    Wait Until Element Is Visible  xpath=//*[@id="topNavTabItems"]/li[4]  timeout=5s
    Click Element  xpath=//*[@id="topNavTabItems"]/li[4]  ConductIntelNav
    Wait Until Element Is Visible  xpath=//*[@id="widget-sidebar"]/nav/ul/li[5]  timeout=5s
    Mouse Over  xpath=//*[@id="widget-sidebar"]/nav/ul/li[5]   ConfigureNav
    Wait Until Element Is Visible  xpath=//*[@id="widget-sidebar"]/nav/ul/li[5]/ul/li[4]  timeout=5s
    Click Element  xpath=//*[@id="widget-sidebar"]/nav/ul/li[5]/ul/li[4]    PolicyLinkNav
    Wait Until Element Is Visible  xpath=//*[@id="layout-static"]/div[2]/supervision/div/div/section/ng-component/div/div/div/panel/div/div/div[1]/div/ul/li[1]  timeout=5

Select Add Policy Tab
    Click Element  xpath=//*[@id="layout-static"]/div[2]/supervision/div/div/section/ng-component/div/div/div/panel/div/div/div[1]/div/ul/li[2]   Policy Page AddPolicyNav