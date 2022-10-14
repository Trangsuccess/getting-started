*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Resource            ../librares.resource
Resource            ../keywords.resource
Library    XML
Library    Collections
Library     ../../libraries/GUItest.py

*** Keywords ***
Input First Name
    [Arguments]     ${firstname}
    Zoomba.GUILibrary.Input Text    ${txtFirstNameNewUser}    ${firstname}

Input Last Name
    [Arguments]     ${lastname}
    Zoomba.GUILibrary.Input Text    ${txtLastNameNewUser}    ${lastname}
Input Email
    [Arguments]     ${email}
    Zoomba.GUILibrary.Input Text    ${txtEmailNewUser}    ${email}

Input Phone number
    [Arguments]     ${phone}
    Zoomba.GUILibrary.Input Text    ${txtPhoneNumberNewUser}    ${phone}

Select ${Role} Assignment
   Open Context Menu    ${cboRoleNewUser}





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