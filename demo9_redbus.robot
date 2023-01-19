*** Settings ***
Library   SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser  url=https://www.facebook.com          browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To   url=https://www.redbus.in/
    Click Element    id=i-icon-profile
    Click Element   id=signInLink
    Input Text    id=mobileNoInp   22345556
    Select Frame    xpath=//iframe[@class=modalI