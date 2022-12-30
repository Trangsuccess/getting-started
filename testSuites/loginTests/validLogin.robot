*** Settings ***
Documentation     This .robot file is a suite
...
...               Keywords are imported from the resource file
Resource        ../../libraries/importlibs.resource
Resource        ../../resources/keywords.resource
Resource        ../../variables/variables.resource

Test Setup          Open the Login screen
Test Teardown       Close Browser
Suite Teardown      Close All Browsers
Test Template       Login with credentials
Library             DataDriver      ${CURDIR}/validcredentials.csv

*** Variables ***
${validEmail}
${validPassword}
## ${message}        Sign up successful.

*** Test Cases ***
Valid Login       ${validUsername}        ${validPassword}
