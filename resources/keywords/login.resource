*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.

Resource        ../../libraries/importlibs.resource
Resource        ../../variables/variables.resource


*** Keywords ***
Input Email
    [Arguments]     ${email}
    Wait Until Element Is Visible  ${txtEmailLogin}
    Clear Element Text    ${txtEmailLogin}
    input text      ${txtEmailLogin}    ${email}

Input Password
    [Arguments]     ${password}
    Wait until element is visible  ${txtPasswordLogin}
    Clear Element Text   ${txtPasswordLogin}
    Input text      ${txtPasswordLogin}    ${password}

Click LOGIN button
    Wait Until Element Is Visible        ${btnLogin}
    Click Button        ${btnLogin}

Toast message should be ${toastMessage}
    Wait until element is visible   ${toastTextLogin}
    ${message}=  Get text  ${toastTextLogin}
    Convert To Bytes    ${message}
    Log To Console    ${message}
    Log To Console    ${toastMessage}
    Should be equal  ${message}     ${toastMessage}

Login with credentials
    [Arguments]     ${email}     ${password}
    login.Input Email      ${email}
    login.Input Password   ${password}
    login.Click LOGIN button
    Toast message should be ${toastMessage}


