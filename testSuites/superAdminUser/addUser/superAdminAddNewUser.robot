*** Settings ***
Resource    ../../resources/keywords.resource
Resource        ../../config/initialize_Application.resource
Suite Setup     Open the Login screen

*** Variables ***
${firstname}    Test
${lastname}     Role
${email}        bmstestaccount1@yopmail.com
${Role}         BMS Administrator

*** Test Cases ***

*** Keywords ***
Super Admin create a ${role} User
    [Arguments]     ${firstname}    ${lastname}    ${email}    ${Role}
    Login as Super Admin
    Open User Setting screen
    userSetting_keywords.Click button Add
    Input all required fields    ${firstname}    ${lastname}    ${email}    ${Role}
    Click button Save