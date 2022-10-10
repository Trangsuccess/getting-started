*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Resource            ../librares.resource


*** Keywords ***
Click button Add
    Click Button      ${btnAddUserSetting}