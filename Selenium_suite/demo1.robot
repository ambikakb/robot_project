*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser  url=https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html     browser=chrome
    ${actual_title}  Get Title
    Log To Console    ${actual_title}
    Log   ${actual_title}
    Should Be Equal   ${actual_title}   SeleniumLibrary
    Title Should Be    SeleniumLibrary

TC2
    Open Browser   url=https://www.facebook.com/        browser=chrome
    Input Text      id:email    helpgmail.com
    Input Password    id:pass    welcome123
    Click Element    name:login

    #Click Element    name:forgotten password

TC3
    Open Browser   url=https://www.db4free.net/phpMyAdmin/   browser=chrome
    Select From List By Label    id:languageSelect   English
    Input Text    id:input_username    Akb
    Input Password   id:input_password    Akb12345
    
TC4
    Open Browser   browser=chrome
    ${output}  Run Keyword And Ignore Error    Click Element    xpath=//a
    Log To Console    ${output}
    Log To Console    ${output}[0]
    Log To Console    ${output}[1]
    log    ${output}
