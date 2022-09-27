*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Resource            ../librares.resource


*** Keywords ***
input Username
    [Arguments]     ${Text}
    wait until element is visible  ${signupUsername}
    click element   ${signupUsername}
    input text      ${signupUsername}    ${Text}

input Password
    [Arguments]     ${Text}
    wait until element is visible    ${signupPassword}
    click element     ${signupPassword}
    input text    ${signupPassword}      ${Text}

click Sign up Button
    wait until element is visible      ${signupButtonSignup}
    click button   ${signupButtonSignup}

Alert message should be opened
    [Arguments]         ${mesage}
    alert should be present     ${mesage}