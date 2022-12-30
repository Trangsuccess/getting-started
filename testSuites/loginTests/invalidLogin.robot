*** Settings ***
Documentation     This .robot file is a suite
...
...               Keywords are imported from the resource file
Resource        ../../libraries/importlibs.resource
Resource        ../../resources/keywords.resource
Library         DataDriver      invalidLogin.csv
Suite Setup         Log path
Test Setup          Open the Login screen
Test Template       Verify invalid login

*** Test Cases ***                  USERNAME        PASSWORD        TOASTMESSAGE
Empty username and password         ${EMPTY}        ${EMPTY}        ${EMPTY}
#InValid username                    ${aemail}       ${apassword}    ${atoastMessage}
#InValid password                    ${aemail}       ${apassword}    ${atoastMessage}
#Both Invalid                        ${aemail}       ${apassword}    ${atoastMessage}

