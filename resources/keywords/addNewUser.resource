*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Resource            ../librares.resource
Resource            ../keywords.resource

*** Keywords ***
Input First Name
    [Arguments]     ${firstname}
    Input Text    ${txtFirstNameNewUser}    ${firstname}

Input Last Name
    [Arguments]     ${lastname}
    Input Text    ${txtLastNameNewUser}    ${lastname}
Input Email
    [Arguments]     ${email}
    Input Text    ${txtEmailNewUser}    ${email}

Input Phone number
    [Arguments]     ${phone}
    Input Text    ${txtPhoneNumberNewUser}    ${phone}

Choose ${Role} Assignment

    Set Browser Implicit Wait    5
    Set Focus To Element    ${cboRoleNewUser}
    Set Browser Implicit Wait    5
     ${List}=       Get List Items      ${cboRoleNewUser}
    Log To Console    ${list}

Check checkbox All Dealer


Click button Save
    Click Button    ${btnSaveNewUser}

Input all required fields
     [Arguments]     ${firstname}    ${lastname}    ${email}
     addNewUser.Input First Name   ${firstname}
     addNewUser.Input Last Name    ${lastname}
     addNewUser.Input Email    ${email}

Input option fields
    [Arguments]     ${phone}
    Input Phone number  ${phone}