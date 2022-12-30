*** Settings ***
Documentation     This .robot file is a setup step

Resource        ../libraries/importlibs.resource
Resource        ../variables/variables.resource


*** Variables ***
${ENVIRONMENT}      QA
${BROWSER}        firefox

*** Keywords ***
Open the Login screen
    Open Browser        ${${ENVIRONMENT}_URL}       ${BROWSER}
    Maximize Browser Window
    Title Should Be    BMS

Login as Super Admin
    Log To Console    ${${ENVIRONMENT}_UserName}
    Log To Console    ${${ENVIRONMENT}_Password}

Log path
    Log To Console      ${CURDIR}