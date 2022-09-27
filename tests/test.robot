*** Settings ***
Documentation     This .robot file is a suite
...
...               Keywords are imported from the resource file
Resource        ../resources/librares.resource
Resource        ../resources/keywords.resource
Resource        ../config/setUp.resource
Default Tags      positive

Suite Setup         Start Browser
Suite Teardown      Close All Browsers


*** Test Cases ***
Simple Test Case
    [Documentation]    Shows some assertion keywords
    Log To Console    ${ENVIRONMENT}     
    Generate Random Emails    ${8}