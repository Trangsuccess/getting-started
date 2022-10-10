*** Settings ***
Documentation     This .robot file is a suite
...
...               Keywords are imported from the resource file
Resource        ../../resources/librares.resource
Resource        ../../resources/keywords.resource
Library         DataDriver      ${CURDIR}/invalidcredentials.csv

Test Template       Login with invalid credentials
Test Setup         Open the Login screen
Suite Teardown      Close All Browsers

*** Variables ***
${invalidEmail}
${invalidPassword}
${toastMessage}

*** Test Cases ***
InValid Login       ${invalidEmail}     ${invalidPassword}      ${toastMessage}

*** Keywords ***
Login with invalid credentials
    [Arguments]     ${invalidEmail}     ${invalidPassword}      ${toastMessage}
    Log To Console    ${CURDIR}
    Log To Console    ${TEMPDIR}
    login_keywords.Input Email      ${invalidEmail}
    login_keywords.Input Password   ${invalidPassword}
    login_keywords.Click Login Button
    login_keywords.Toast message should be ${toastMessage}