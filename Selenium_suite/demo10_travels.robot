*** Settings ***
Library   SeleniumLibrary
*** Test Cases ***

TC5 Javascript
    Open Browser   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://phptravels.net
    Execute Javascript  document.querySelector('#checkout').value='20-6-2024'
    Execute Javascript  document.querySelector('#chackin').value='28-6-2023'
    Click Element    xpath=//span[contain(text(),' Search by City')]
    Input Text    xpath=//input[@aria-controls='select2-hotels_city-results')]  vadodara
                   #xpath=//li[contains(
    sleep  4s

TC6 Javascript
    Open Browser   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://www.nasscom.in
    
    ${ele}  Get WebElement     xpath=//