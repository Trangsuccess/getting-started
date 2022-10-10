*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Resource            ../librares.resource

*** Keywords ***
Open Device Model Management screen
    click link      ${linkDeviceModalManagement}

Open Subscription Management screen
    click link      ${linkSubscriptionManagement}

Open Gateway Management screen
    click link      ${linkGatewayManagement}

Open Customer Management menu
    click link      ${linkCustomerManagement}
Open Client Setting screen
    click link      ${linkClientSetting}

Open Dealer Setting screen
    click link      ${linkDealerSetting}

Open User Setting screen
    Click Element    ${linkUserSetting}
    Set Browser Implicit Wait    5

Click button Log Out
    Click Link    ${btnLogOut}