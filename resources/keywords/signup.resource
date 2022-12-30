*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.

Resource        ../../libraries/importlibs.resource
Resource        ../../variables/variables.resource


*** Keywords ***
input Username
    [Arguments]     ${Text}
    wait until element is visible   ${txtSignupUsername}
    click element       ${txtSignupUsername}
    input text          ${txtSignupUsername}    ${Text}

input Password
    [Arguments]     ${Text}
    wait until element is visible       ${txtSignupUsername}
    click element       ${txtSignupUsername}
    input text          ${txtSignupUsername}      ${Text}

click Sign up Button
    wait until element is visible       ${txtSignupUsername}
    click button    ${txtSignupUsername}

Alert message should be opened
    [Arguments]         ${message}
    alert should be present     ${message}