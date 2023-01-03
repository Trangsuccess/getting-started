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

*** Variables ***
${email}  admin@lightbox.com
${password}  P@ssword123
${expected_Text}  Dashboard

*** Test Cases ***
Verify valid login
    Login with credentials  ${email}    ${password}