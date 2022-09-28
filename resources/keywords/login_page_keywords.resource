*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Resource            ../librares.resource

*** Keywords ***
Welcome Page should be loaded
    [Arguments]     ${username}
    wait until element is visible    ${navigationBarWelcomeLink}
    element text should be      ${navigationBarWelcomeLink}     Welcome ${username}


Click Home link at navigation bar
    click link      ${navigationBarHomeLink}

Click Contact link at navigation bar
    click link      ${navigationBarContactLink}

Click About Us link at navigation bar
    click link      ${navigationBarAboutUsLink}

Click Cart link at navigation bar
    click link      ${navigationBarCartLink}

Sign up link at navigation bar should not be Visible
    Element Should Not Be Visible    ${navigationBarSignUpLink}

Login link at navigation bar should not be Visible
    Element Should Not Be Visible    ${navigationBarCartLink}