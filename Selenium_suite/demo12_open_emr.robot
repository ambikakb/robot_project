*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser   browser=Edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=http://demo.openemr.io/b/openemr/
    Input Text    xpath=//input[@name='authUser']    admin
    Input Text    xpath=//input[@name='clearPass']   pass
    Click Element   xpath=//select[@class='form-control']
    Select From List By Label    xpath=//select[@class='form-control']     English (Indian)
    Click Element     xpath=//button[@id='login-button']
    Click Element    xpath=//div[text()='Patient']

    Click Element    xpath=//div[text()='New/Search']
    Select Frame    xpath=//iframe[@name='pat']
    Input Text    xpath=//input[@id='form_fname']    ambika
    Input Text    xpath=//input[@id='form_lname']    kb
    Click Element    xpath=//input[@id='form_DOB']
    Input Text    xpath=//input[@id='form_DOB']    24/01/2023
    Click Element    xpath=//select[@id='form_sex']
    Select From List By Label    xpath=//select[@id='form_sex']           Female
    Click Element    xpath=//button[@id='create']
    Unselect Frame
    Select Frame   xpath=//iframe[@id='modalframe']
    Click Element   xpath=//input[@value='Confirm Create New Patient']
    ${alert_text}  Handle Alert    action=ACCEPT    timeout=30s
    Log To Console    ${alert_text}
    Unselect Frame
    Click Element    class=closeDlgIframe
    Element Should Contain    xpath=//span[text()='ambika kb']    ambika kb
    Sleep    5s
    Close Browser