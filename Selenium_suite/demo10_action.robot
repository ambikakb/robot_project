*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser   browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://nasscom.in/
    Mouse Over    xpath= //a[text()='Membership']
    Click Element    xpath=//a[text()='Members Listing']

TC2
    Open Browser    browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://nasscom.in/
    Mouse Over    xpath= //a[text()='Membership']
    Mouse Over    xpath=//a[text()='Become a Member']
    Click Element    xpath=//a[text()='Membership Benefits']
    Click Element    xpath=//a[contains(text(),'Click to Apply Online ')]
    Input Text    id=edit-field-company-profile-0-value    L&T
    Click Element    id=calculate-fee
    ${msg}     Handle Alert    action=ACCEPT     timeout=40sec
    Log To Console    ${msg}
    Should Be Equal    ${msg}    Please enter the total revenue greater than ZERO.




