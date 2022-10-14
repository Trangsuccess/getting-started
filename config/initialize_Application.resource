*** Settings ***
Documentation     This .robot file is a setup step
Resource        ../resources/librares.resource
Resource        ../resources/keywords.resource


*** Variables ***
${ENVIRONMENT}      QA
${BROWSER}        firefox

*** Keywords ***
Open the Login screen
    Zoomba.GUILibrary.Open Browser        ${${ENVIRONMENT}_URL}       ${BROWSER}
    Zoomba.GUILibrary.Maximize Browser Window
    Zoomba.GUILibrary.Title Should Be    BMS

Login as Super Admin
    Log To Console    ${${ENVIRONMENT}_UserName}
    Log To Console    ${${ENVIRONMENT}_Password}
    login.Input Email    ${${ENVIRONMENT}_UserName}
    login.Input Password    ${${ENVIRONMENT}_Password}
    login.Click LOGIN button
    Zoomba.GUILibrary.Set Browser Implicit Wait    3

