*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Resource            ../librares.resource

*** Keywords ***
Click button Add
    Click Button      ${btnAdd}

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

Choose Role Assignment
    [Arguments]     ${Role}
    Select From List By Value       ${cboRoleNewUser}   ${Role}

Click button Save
    Click Button    ${btnSaveNewUser}

Input all required fields
     [Arguments]     ${firstname}    ${lastname}    ${email}    ${Role}
     Input First Name   ${firstname}
     Input Last Name    ${lastname}
     Input Email    ${email}
     Choose Role Assignment     ${Role}

Input option fields
    [Arguments]     ${phone}
    Input Phone number  ${phone}