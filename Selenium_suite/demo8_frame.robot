*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC3
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    Input Text    name=fldLoginUserId    test123


TC1 REG
    Open Browser     browser=edge
    Maximize Browser Window
    Set Browser Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    Select Frame   xpath=//frame[@name='login_page']
    Input Text   name=fldLoginUserId    test123
    Click Element   link=CONTINUE
    Unselect Frame

TC2
    Open Browser     browser=edge
    Maximize Browser Window
    Set Browser Implicit Wait    30s
    Go To    url=https://redbus.in
    Click Element   id=signin-block
    Click Element   id=signInLink
    Select Frame   xpath=//iframe[@class='modalIframe']
    Input Text   id=mobileNoInp    9500
    Element Should Contain   xpath=//span[contains(text(),'Please enter')]   Please enter valid mobile number
    Unselect Frame

TC4
     Open Browser     browser=edge
    Maximize Browser Window
    Set Browser Implicit Wait    30s
    Go To    url=https://redbus.in
    Click Element   id=signin-block
    Click Element   id=signInLink
    Select Frame    xpath=//iframe[@class='modalIframe']
    Input Text    xpath=//input[@id='mobileNoInp']    12345
