*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Resource            ../librares.resource
Library    Telnet

*** Keywords ***
Input Email
    [Arguments]     ${Email}
    wait until element is visible  ${txtEmailLogin}
    Clear Element Text    ${txtEmailLogin}
    input text      ${txtEmailLogin}    ${Email}

Input Password
    [Arguments]     ${Password}
    wait until element is visible  ${txtPasswordLogin}
    Clear Element Text   ${txtPasswordLogin}
    input text      ${txtPasswordLogin}    ${Password}

Click LOGIN button
    Wait Until Element Is Visible      ${btnLogin}
    Click Button      ${btnLogin}

Toast message should be ${toastMessage}
    Wait until element is visible   ${toastTextLogin}
    ${message}=  Get text  ${toastTextLogin}
    Convert To Bytes    ${message}
    Log To Console    ${message}
    Log To Console    ${toastMessage}
    Should be equal  ${message}     ${toastMessage}

