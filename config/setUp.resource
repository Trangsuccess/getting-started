*** Settings ***
Documentation     This .robot file is a setup step
Resource        ../resources/librares.resource

*** Variables ***
${ENVIRONMENT}      
${BROWSER}        

*** Keywords ***
Start Browser
    Open Browser    ${${ENVIRONMENT}_URL}       ${BROWSER}
    MAXIMIZE BROWSER WINDOW
    Set Browser Implicit Wait    3