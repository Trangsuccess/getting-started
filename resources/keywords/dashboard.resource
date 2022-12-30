*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.

Resource        ../../libraries/importlibs.resource
Resource        ../../variables/variables.resource

*** Keywords ***
Open Device Model Management screen
    Click Link      ${linkDeviceModalManagement}

Open Subscription Management screen
    Click Link      ${linkSubscriptionManagement}

Open Gateway Management screen
    Click Link      ${linkGatewayManagement}

Open Customer Management menu
    Click Link      ${linkCustomerManagement}

Open Client Setting screen
    Click Link      ${linkClientSetting}

Open Dealer Setting screen
   Click Link      ${linkDealerSetting}

Open User Setting screen
    Click Element    ${linkUserSetting}
    Set Browser Implicit Wait    10

Click button Log Out
    Click Link    ${btnLogOut}