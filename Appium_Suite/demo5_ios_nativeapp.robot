*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
TC1
    ${dic}  Create Dictionary   buildName=khan lt7
    ...   projectName=khan project lt7
    ...   userName=ambikakb_HSLpUa
    ...   accessKey=b6c1GfpFyPdqUJRa8WKp


    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...   platformName=ios
    ...   deviceName=iPhone 11 Pro
    ...   app=bs://efb7b2efccaed155ebda1273f9ccac72a6e71285
    ...   platformVersion=13
    ...   bstack:options=${dic}
    
    Set Appium Timeout    30s
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name='test-Username']
    Input Text    xpath=//XCUIElementTypeTextField[@name='test-Username']    standard_user
    
    Wait Until Page Contains Element    xpath=//XCUIElementTypeSecureTextField[@name='test-Password']
    Input Text    xpath=//XCUIElementTypeSecureTextField[@name='test-Password']    secret_sauce
    
    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name='test-LOGIN']
    Click Element    xpath=//XCUIElementTypeOther[@name='test-LOGIN']
    
    Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name='test-ADD TO CART'])[1]
    Click Element    xpath=(//XCUIElementTypeOther[@name='test-ADD TO CART'])[1]
    
    Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="1"])[4]
    Click Element    xpath=(//XCUIElementTypeOther[@name="1"])[4]

    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name='test-CHECKOUT']
    Click Element    xpath=//XCUIElementTypeOther[@name='test-CHECKOUT']

    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name='test-First Name']
    Input Text    xpath=//XCUIElementTypeTextField[@name='test-First Name']    john

    Wait Until Page Contains Element   xpath=//XCUIElementTypeTextField[@name='test-Last Name']
    Input Text   xpath=//XCUIElementTypeTextField[@name='test-Last Name']   jo

    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name='test-Zip/Postal Code']
    Input Text    xpath=//XCUIElementTypeTextField[@name='test-Zip/Postal Code']    100022

    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name='test-CONTINUE']
    Click Element  xpath=//XCUIElementTypeOther[@name='test-CONTINUE']
    Sleep    30s
    Wait Until Page Contains Element    xpath=//XCUIElementTypeStaticText[@name='Payment Information:']
    Element Should Contain Text    xpath=//XCUIElementTypeStaticText[@name='Payment Information:']    Payment Information:
    Sleep    20s
    Wait Until Page Contains Element    xpath=//XCUIElementTypeStaticText[@name='Shipping Information:']
    Element Should Contain Text    xpath=//XCUIElementTypeStaticText[@name='Shipping Information:']    Shipping Information:

    [Teardown]   Close Application