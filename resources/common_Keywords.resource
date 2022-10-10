*** Settings ***
Documentation     This .robot file is a suite
...
...               Keywords are imported from the resource file
Resource        librares.resource

*** Variables ***
#scalar variable syntax ${var} it also a ${list}
#%{ENV_VAR_NAME=default value}
#${NAME}         Robot Framework
#${VERSION}      2.0
#${ROBOT}        ${NAME} ${VERSION}
# ${SCALAR}, @{LIST} and &{DICT}
#@{NAMES}        Matti       Teppo
#@{NAMES2}       @{NAMES}    Seppo
#@{NOTHING}
#@{MANY}         one         two      three      four
...             five        six      seven
#&{USER 1}       name=Matti    address=xxx         phone=123
#&{USER 2}       name=Teppo    address=yyy         phone=456
#&{MANY}         first=1       second=${2}         ${3}=third
#&{EVEN MORE}    &{MANY}       first=override      empty=
...             =empty        key\=here=value

*** Keywords ***

Read CSV file
    [Arguments]     ${fiel_path}
    ${CSV}   Get File    ${fiel_path}
    @{list_lines}  Create List     ${CSV}
    @{lines}  Split To Lines  @{list_lines}    1

      FOR    ${line}    IN    @{lines}
           ${slipt}     Split String    ${line}    ;    #last agrument is the seperator of your CSV file
           ${String}     Set Variable   ${slipt}[0]     #get data in each line
           Log  ${slipt}
      END

Write CSC file
    [Arguments]     ${fiel_path}    @{list}
   Append To File    ${fiel_path}    @{list}


Click To Element
    [Arguments]  ${locator}
    ${x}=        Get Horizontal Position  ${locator}

    ${y}=        Get Vertical Position    ${locator}
    Click Element At Coordinates    ${locator}    ${x}    ${y}
