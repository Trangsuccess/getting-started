*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Resource            ../librares.resource
Library    Telnet

*** Keywords ***
Input Email
    [Arguments]     ${Email}
    Zoomba.GUILibrary.wait until element is visible  ${txtEmailLogin}
    Zoomba.GUILibrary.Clear Element Text    ${txtEmailLogin}
    Zoomba.GUILibrary.input text      ${txtEmailLogin}    ${Email}

Input Password
    [Arguments]     ${Password}
    Zoomba.GUILibrary.wait until element is visible  ${txtPasswordLogin}
    Zoomba.GUILibrary.Clear Element Text   ${txtPasswordLogin}
    Zoomba.GUILibrary.input text      ${txtPasswordLogin}    ${Password}

Click LOGIN button
    Zoomba.GUILibrary.Wait Until Element Is Visible      ${btnLogin}
    Zoomba.GUILibrary.Click Button      ${btnLogin}

Toast message should be ${toastMessage}
    Zoomba.GUILibrary.Wait until element is visible   ${toastTextLogin}
    ${message}=  Zoomba.GUILibrary.Get text  ${toastTextLogin}
    Convert To Bytes    ${message}
    Log To Console    ${message}
    Log To Console    ${toastMessage}
    Should be equal  ${message}     ${toastMessage}

