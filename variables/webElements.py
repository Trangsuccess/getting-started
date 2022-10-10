# Dashboard locators
linkDeviceModalManagement = "xpath://a[@href='/admin/device-model']"
linkSubscriptionManagement = "xpath://a[@href='/admin/subscriptions']"
linkGatewayManagement = "xpath://a[@href='/admin/gateway']"
linkCustomerManagement = "xpath://a[@href='#zeggo']"
linkClientSetting = "xpath://a[@href='/admin/customer-management/client']"
linkDealerSetting = "xpath://a[@href='/admin/customer-management/dealer']"
linkUserSetting = "xpath://a[@href='/admin/user']"
btnLogOut = "xpath://li[text() ='Log out']"

# Client Setting screen
btnAddClientSetting = "xpath://button[text() = 'Add']"
cboAllDealers = "xpath://[@id='react-select-9-placeholder']"

# Login locators
txtEmailLogin = "xpath://input[@name= 'email']"
txtPasswordLogin = "xpath://input[@name='password']"
btnLogin = "xpath://button[@type='submit']"
chkRememberme = "id:remember-me"
linkForgotPassword = "xpath://a[@href='/forgot-password']"
toastTextLogin = "xpath://div[contains(@class, 'Toastify__toast-body')]"

# Add New User
txtFirstNameNewUser = "xpath://input[@name='firstName']"
txtLastNameNewUser = "xpath://input[@name='lastName']"
txtEmailNewUser = "xpath://input[@name='email']"
txtPhoneNumberNewUser = "xpath://[@name='phoneNumber']//following::input"
txtJobTitleNewUser = "xpath://[@name='jobTitle']//following::input"
cboRoleNewUser = "xpath=//div[@id='role']/div/div/div[2]"
chkAllDealerNewUser = "id:includeAllDealer"
btnSaveNewUser = "xpath://*[@type='submit']//following::button"

# User Setting
btnAddUserSetting = "xpath://button[text()='Add']"
dgdUsers = "xpath://table/tbody/tr"
