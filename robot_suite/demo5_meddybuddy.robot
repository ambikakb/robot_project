*** Settings ***
Library   SeleniumLibrary
*** Test Cases ***
TC1
     Open Browser  url=https://www.facebook.com         browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To   url=https://www.medibuddy.in/
    Click Element    link=Login
    #Input Text    name=mobile    7798564785
    Click Element  xpath=//div[contains(text(),'I have an Insurance/Corporate Account')]
    #Click Element  class=coperate
    Click Element  class=coperate
    Input Text    name=userName    john
    Click Element  xpath=//button[contains(text(),'Proceed')]
    Input Text    name=password    john123
    Click Element    xpath=//input[contains(@type,'checkbox')]
    Click Element    xpath=//button[contains(text(),'Log in')]
    Element Should Contain    xpath=//*[contains(text(),'incorrect password')]   incorrect password
    #Click Element    link=btn btn-primary

    #Input Text     name=useremail   akb3@gmail.com