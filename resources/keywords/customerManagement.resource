*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.

Resource        ../../libraries/importlibs.resource
Resource        ../../variables/variables.resource

*** Keywords ***
Click Home link at navigation bar
    click link      ${linkDeviceModalManagement}

Click Contact link at navigation bar
    click link      ${linkDeviceModalManagement}

Click About Us link at navigation bar
    click link      ${linkDeviceModalManagement}

Click Cart link at navigation bar
    click link      ${linkDeviceModalManagement}

Click Sign up link at navigation bar
    click link    ${linkDeviceModalManagement}

Click Login link at navigation bar
    click link    ${linkDeviceModalManagement}