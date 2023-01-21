*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
TC1 Sign Up
    [Documentation]   Working with native app
    ...  for automating sign up activity

    Open Application    remote_url=http://localhost:4723/wd/hub
    ...   platformName=android
    ...   deviceName=infinix
    ...   app=C:${/}Users${/}40032111${/}mobile${/}khan-academy-7-3-2.apk

    Set Appium Timeout   30s
    Wait Until Page Contains Element  xpath=//*[@text='Dismiss']  30s
    Click Element    xpath=//*[@text='Dismiss']
    Wait Until Page Contains Element  xpath=//android.widget.ImageView[@content-desc='Settings']
    Click Element    xpath=//android.widget.ImageView[@content-desc='Settings']
    Wait Until Page Contains Element  xpath=//android.widget.TextView[@text='Sign in']
    Click Element    xpath=//android.widget.TextView[@text='Sign in']
    Wait Until Page Contains Element  xpath=//android.widget.TextView[@text='Sign up with email']
    Click Element    xpath=//android.widget.TextView[@text='Sign up with email']
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc='First name']
    Input Text    xpath=//android.widget.EditText[@content-desc='First name']   Akb
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc='Last name']
    Input Text    xpath=//android.widget.EditText[@content-desc='Last name']   anu
    Wait Until Page Contains Element  xpath=//android.widget.TextView[@text='Birthday']
    Click Element  xpath=//android.widget.TextView[@text='Birthday']
    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]
    Click Element   xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]
    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]
    Clear Text  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]
    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]
    Input Text   xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]  Nov
    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]
    Click Element   xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]
    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]
    Clear Text  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]
    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]
    Input Text   xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]  23
    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]
    Click Element   xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]
    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]
    Clear Text  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]
    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]
    Input Text   xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]  1996
    Wait Until Page Contains Element  xpath=//android.widget.Button[@text='OK']
    Click Element    xpath=//android.widget.Button[@text='OK']
    Wait Until Page Contains Element  xpath=//android.widget.EditText[@text='Email address']
    Input Text    xpath=//android.widget.EditText[@text='Email address']  akb@gmail.com
    Wait Until Page Contains Element  xpath=//android.widget.EditText[@text='Password']
    Input Text    xpath=//android.widget.EditText[@text='Password']  akb123
    Wait Until Page Contains Element  xpath=//android.widget.TextView[@text='CREATE']
    Click Element  xpath=//android.widget.TextView[@text='CREATE']
    Wait Until Page Contains Element   xpath=//android.widget.TextView[@text='There was an issue signing in']
    Element Text Should Be   xpath=//android.widget.TextView[@text='There was an issue signing in']    There was an issue signing in
    Sleep    30s
    [Teardown]  Close Application

TC2
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...   platformName=android
    ...   deviceName=infinix
    ...   app=C:${/}Users${/}40032111${/}mobile${/}khan-academy-7-3-2.apk
    
