
*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***

TC1
    Open Browser   url=https://www.facebook.com    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    link:Create New Account
    Input Text    name:firstname    akb
    Input Text    name:lastname    kmmar
    Input Text    name:reg_email__    ak343b@gamil.com
    Input Password    id=password_step_input    akdjci43#6
    Click Element    xpath=//input[@value='-1']
    #20 jan 2000
    Select From List By Value    id=day    20
    Select From List By Index    id=month    3
    Select From List By Label    id=year     2000
    Click Element    name=websubmit



    #Open Browser   url=https://www.db4free.net/phpMyAdmin/   browser=chrome
    #Select From List By Label    id:languageSelect   English
    #Input Text    id:input_username    Akb
    #Input Password   id:input_password    Akb12345"""