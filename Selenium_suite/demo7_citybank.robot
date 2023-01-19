*** Settings ***
Library   SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser  url=https://www.facebook.com          browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To   url=https://www.online.citibank.co.in/
    Run Keyword And Ignore Error    Click Element    xpath=//a[contains(@class,'fancybox-item fancybox-close')]
    Click Element    link=Login
    Switch Window   Citibank India
    Click Element    xpath=//div[contains(text(),'User ID? ')]
    #Click Element    xpath=//p[contains(text(),'Enter Account ')]
    Click Element    link=select your product type
    Click Element    link=Credit Card
    Input Text    name=citiCard1    4545
    Input Text    name=citiCard2    5656
    Input Text    name=citiCard3    8887
    Input Text    name=citiCard4    9998
    Input Text    id=cvvnumber    456
    Scroll Element Into View    xpath=//input[@value='PROCEED']
    Click Element    name=DOB
    Select From List By Label    class=ui-datepicker-year    2022
    Select From List By Label    class=ui-datepicker-month   Apr
    Click Element    link=14
    #Click Element   name=agree


    Click Element    xpath=//input[@value='PROCEED']
    Element Should Contain    id=ui-id-1    Please accept Terms and Conditions

TC5 Javascript
    Open Browser   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://phptravels.net
    Execute Javascript  document.querySelector('#checkout').value='20-6-2024'
    Execute Javascript  document.querySelector('#chackin').value='28-6-2023'
    Click Element    id=select2-hotels_city-container

    sleep   4s
