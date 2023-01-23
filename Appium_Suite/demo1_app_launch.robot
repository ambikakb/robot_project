*** Settings ***
Library   AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://localhost:4723/wd/hub      platformName=android
    ...   deviceName=Infinix
    ...   app=C:${/}Users${/}40032111${/}mobile${/}khan-academy-7-3-2.apk
    ${page_source}  Get Source
    Log To Console   ${page_source}
    sleep  4s
    Close Application
TC2
    Open Application    remote_url=http://localhost:4723/wd/hub      platformName=android
    ...   deviceName=Infinix
    ...   app=C:${/}Users${/}40032111${/}mobile${/}khan-academy-7-3-2.apk
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Dismiss']    30s
    Click Element    xpath=//android.widget.TextView[@text='Dismiss']
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']   30s
    Click Element    xpath=//android.widget.TextView[@text='Sign in']
    Wait Until Page Contains Element   xpath=//android.widget.TextView[@text='Sign in']  30s
    Click Element   xpath=//android.widget.TextView[@text='Sign in']
    Wait Until Page Contains Element   xpath=//*[@text='Enter an e-mail address or username']  30s
    Input Text   xpath=//*[@text='Enter an e-mail address or username']   akb@gmail.com
    Wait Until Page Contains Element   xpath=//*[@text='Password']  30s
    Input Text   xpath=//*[@text='Password']  srtuggfd
    Wait Until Page Contains Element    xpath=//android.widget.Button[@content-desc='Sign in']  30s
    Click Element    xpath=//android.widget.Button[@content-desc='Sign in']
    Wait Until Page Contains Element   xpath=//android.widget.TextView[@text='There was an issue signing in']
    Element Text Should Be   xpath=//android.widget.TextView[@text='There was an issue signing in']    There was an issue signing in

    ${page_source}  Get Source
    Log   ${page_source}
    sleep  4s
    [Teardown]  Close Application


