*** Settings ***
Documentation     This .robot file is a suite
...
...               Keywords are imported from the resource file
Resource        ../../libraries/importlibs.resource
Resource        ../../resources/keywords.resource
Library         DataDriver      invalidLogin.csv
Suite Setup         Log path
Test Setup          Open the Login screen
Test Template       Verify invalid login
Suite Teardown      Close All Browsers

*** Test Cases ***                 USERNAME        PASSWORD        TOASTMESSAGE
Input Incorrect Credentials        ${EMPTY}        ${EMPTY}        ${EMPTY}


*** Keywords ***
Verify invalid login
    [Arguments]     ${email}     ${password}      ${toastMessage}
    Login with credentials       ${email}     ${password}
    Toast message should be ${toastMessage}
