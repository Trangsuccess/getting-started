*** Settings ***
Documentation     This .robot file is a suite
...
...               Keywords are imported from the resource file
Resource        ../../resources/librares.resource
Resource        ../../resources/keywords.resource

Test Setup         Open the Login screen
Test Teardown       Close Browser
Suite Teardown      Close All Browsers
Test Template      Login with valid credentials
Library             DataDriver      ${CURDIR}/validcredentials.csv

*** Variables ***
${validEmail}
${validPassword}
## ${message}        Sign up successful.

*** Test Cases ***
Valid Login       ${validUsername}        ${validPassword}

*** Keywords ***
Login with valid credentials
    [Arguments]     ${validEmail}  ${validPassword}
    login_keywords.Input Email      ${validEmail}
    login_keywords.Input Password   ${validPassword}
    login_keywords.Click Login Button
    Wait Until Page Contains    Dashboard
