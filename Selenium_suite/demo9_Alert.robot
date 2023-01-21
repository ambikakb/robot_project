*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
    Click Element    xpath=//img[@alt='Go']
    ${Alert_text}  Handle Alert   action=ACCEPT
    Log To Console    ${Alert_text}
    Should Be Equal    ${Alert_text}   Customer ID${SPACE}${SPACE}cannot be left blank.