*** Settings ***
Resource        ../../../resources/keywords.resource
Resource        ../../../resources/librares.resource
Suite Setup     Open the Login screen
Suite Teardown  Close All Browsers

*** Variables ***
${firstname}
${lastname}
${email}
${Role}         Dealer Administrator
${phone}

*** Test Cases ***
Super Admin create a ${role} User
    Open the Login screen
    Login as Super Admin
    dashboard.Open User Setting screen
    userSetting.Click button Add
    addNewUser.Select ${Role} Assignment