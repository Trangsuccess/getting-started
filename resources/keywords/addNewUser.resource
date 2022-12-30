*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.

Resource        ../../libraries/importlibs.resource
Resource        ../../variables/variables.resource
Library    XML
Library    Collections

*** Keywords ***
Input First Name
    [Arguments]     ${firstname}
    Input Text    ${txtFirstNameNewUser}    ${firstname}

Input Last Name
    [Arguments]     ${lastname}
    Input Text    ${txtLastNameNewUser}    ${lastname}

Input Your Email
    [Arguments]     ${email}
    Input Text    ${txtEmailNewUser}    ${email}

Input Phone number
    [Arguments]     ${phone}
    Input Text    ${txtPhoneNumberNewUser}    ${phone}

Select ${Role} Assignment
   Open Context Menu    ${cboRoleNewUser}

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