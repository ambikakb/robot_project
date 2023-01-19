*** Settings ***
Library   SeleniumLibrary
*** Test Cases ***
TC1
     Open Browser  url=https://www.facebook.com         browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To   url=https://www.goto.com/meeting/
    Click Element    id=truste-consent-button
    Click Element    link=Try Free
    Input Text    name=FirstName    John
    Input Text    name=last-name    wick
    Input Text    name=Email    john@gmail.com
    Select From List By Label   name=CompanySize   10 - 99 
    Click Element    xpath=//button[conatins(@class='common-button__button')]