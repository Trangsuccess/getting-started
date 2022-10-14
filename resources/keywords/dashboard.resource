*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Resource            ../librares.resource

*** Keywords ***
Open Device Model Management screen
    Zoomba.GUILibrary.click link      ${linkDeviceModalManagement}

Open Subscription Management screen
    Zoomba.GUILibrary.click link      ${linkSubscriptionManagement}

Open Gateway Management screen
    Zoomba.GUILibrary.click link      ${linkGatewayManagement}

Open Customer Management menu
    Zoomba.GUILibrary.click link      ${linkCustomerManagement}
Open Client Setting screen
    Zoomba.GUILibrary.click link      ${linkClientSetting}

Open Dealer Setting screen
   Zoomba.GUILibrary.click link      ${linkDealerSetting}

Open User Setting screen
    Zoomba.GUILibrary.Click Element    ${linkUserSetting}
    Zoomba.GUILibrary.Set Browser Implicit Wait    5

Click button Log Out
    Zoomba.GUILibrary.Click Link    ${btnLogOut}