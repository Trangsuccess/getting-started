*** Settings ***
Resource        ../../../resources/keywords.resource
Resource        ../../../resources/librares.resource
Suite Setup     Open the Login screen
Test Setup      Login as Super Admin
Suite Teardown  Close All Browsers

*** Variables ***
${firstname}
${lastname}
${email}
${Role}         BMS Administrator
${phone}

*** Test Cases ***
Super Admin create a ${role} User
    dashboard.Open User Setting screen
    userSetting.Click button Add
    addNewUser.Input all required fields   ${firstname}    ${lastname}    ${email}
    addNewUser.Choose ${Role} Assignment
    addNewUser.Input option fields    $phone
    addNewUser.Click button Save