*** Settings ***
Library   SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser  url=https://www.facebook.com         browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To     url=https://www.salesforce.com/in/form/signup/freetrial-sales/
    Input Text    name=UserFirstName    John
    Input Text    name=UserLastName    wick
    Input Text    name=UserEmail    john@gmail.com
    Select From List By Label    name=UserTitle    IT Manager
    Input Text    name=CompanyName   salesforce
    #Input Text    name=UserPhone    985632147
    Select From List By Value    name=CompanyEmployees   250
    Select From List By Label    name=CompanyCountry         United Kingdom
    Click Element     xpath=(//div[@class='checkbox-ui'])[1]
    Click Element    name=start my free trial
    Element Text Should Be   xpath=//span[contains(@id,'UserPhone')]    Enter a valid phone number
    Click Element    xpath=(//div[@type='button'])