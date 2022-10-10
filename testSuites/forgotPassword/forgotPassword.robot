*** Settings ***
Documentation     This .robot file is a suite
...
...               Keywords are imported from the resource file
Resource        ../../resources/librares.resource
Resource        ../../resources/keywords.resource
Library     JSONLibrary
Library     RequestsLibrary
Library     Collections
Library         DataDriver      ${CURDIR}/invalidcredentials.csv


*** Variables ***

*** Keywords ***
Get API
    Create Session    API_Testing    https://yopmail.com/en/
    ${test}     GET On Session

*** Test Cases ***
