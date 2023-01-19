*** Settings ***
Library   SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser  url=https://www.facebook.com          browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To   url=https://www.db4free.net/
    Click Element  partial link=phpMyAdmin
    Switch Window   phpMyAdmin
    Input Text    id=input_username    test123
    Switch Window   db4free.net - MySQL Database for free
    Switch Window  phpMyAdmin
    Input Text    id=input_username    text  