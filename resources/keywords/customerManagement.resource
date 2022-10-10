*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Resource            ../librares.resource

*** Keywords ***
Click Home link at navigation bar
    click link      ${navigationBarHomeLink}

Click Contact link at navigation bar
    click link      ${navigationBarContactLink}

Click About Us link at navigation bar
    click link      ${navigationBarAboutUsLink}

Click Cart link at navigation bar
    click link      ${navigationBarCartLink}

Click Sign up link at navigation bar
    click link    ${navigationBarSignUpLink}

Click Login link at navigation bar
    click link    ${navigationBarLogInLink}