*** Settings ***
Documentation     This .robot file is a setup step
Resource        ../resources/librares.resource
Resource        ../resources/keywords.resource


*** Variables ***
${ENVIRONMENT}      QA
${BROWSER}        firefox

*** Keywords ***
Open the Login screen
    Open Browser        ${${ENVIRONMENT}_URL}       ${BROWSER}
    Maximize Browser Window
    Title Should Be    Zeggo

Login as Super Admin
    login_keywords.Input Your Name    ${${ENVIRONMENT}_QA_UserName}
    login_keywords.Input Password    ${${ENVIRONMENT}_QA_Password}
    login_keywords.Click LOGIN button
    #Wait Until Page Contains    text

